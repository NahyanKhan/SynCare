$baseDir = "f:\SynCare\caresignal"

$dirs = @(
    "caresignal-backend\firebase",
    "caresignal-backend\middleware",
    "caresignal-backend\routes",
    "caresignal-backend\services",
    "caresignal-dashboard\lib",
    "caresignal-dashboard\app\login",
    "caresignal-dashboard\app\dashboard\patients\[id]",
    "caresignal-dashboard\app\dashboard\alerts",
    "caresignal-dashboard\app\dashboard\audit-log",
    "caresignal-dashboard\components",
    "firebase"
)

$files = @(
    "caresignal-backend\server.js",
    "caresignal-backend\package.json",
    "caresignal-backend\.env.example",
    "caresignal-backend\firebase\admin.js",
    "caresignal-backend\middleware\auth.js",
    "caresignal-backend\middleware\rateLimiter.js",
    "caresignal-backend\middleware\twilioValidator.js",
    "caresignal-backend\routes\webhook.js",
    "caresignal-backend\routes\auth.js",
    "caresignal-backend\routes\patients.js",
    "caresignal-backend\routes\healthLogs.js",
    "caresignal-backend\routes\export.js",
    "caresignal-backend\routes\auditLog.js",
    "caresignal-backend\services\groqTriage.js",
    "caresignal-backend\services\sdiCompute.js",
    "caresignal-backend\services\cloudinaryUpload.js",
    "caresignal-backend\services\alertService.js",
    "caresignal-dashboard\package.json",
    "caresignal-dashboard\tailwind.config.js",
    "caresignal-dashboard\next.config.js",
    "caresignal-dashboard\.env.example",
    "caresignal-dashboard\lib\firebase.ts",
    "caresignal-dashboard\lib\axios.ts",
    "caresignal-dashboard\app\layout.tsx",
    "caresignal-dashboard\app\login\page.tsx",
    "caresignal-dashboard\app\dashboard\layout.tsx",
    "caresignal-dashboard\app\dashboard\page.tsx",
    "caresignal-dashboard\app\dashboard\patients\page.tsx",
    "caresignal-dashboard\app\dashboard\patients\[id]\page.tsx",
    "caresignal-dashboard\app\dashboard\alerts\page.tsx",
    "caresignal-dashboard\app\dashboard\audit-log\page.tsx",
    "caresignal-dashboard\components\SDIBadge.tsx",
    "caresignal-dashboard\components\PatientCard.tsx",
    "caresignal-dashboard\components\AlertBanner.tsx",
    "caresignal-dashboard\components\MedicationGrid.tsx",
    "caresignal-dashboard\components\ChatLog.tsx",
    "caresignal-dashboard\components\SDITrendChart.tsx",
    "caresignal-dashboard\components\AIBriefCard.tsx",
    "caresignal-dashboard\components\PatientRegistrationWizard.tsx",
    "firebase\firestore.rules",
    "firebase\firestore.indexes.json"
)

[System.IO.Directory]::CreateDirectory($baseDir) | Out-Null

foreach ($dir in $dirs) {
    [System.IO.Directory]::CreateDirectory("$baseDir\$dir") | Out-Null
}

foreach ($file in $files) {
    $parent = [System.IO.Path]::GetDirectoryName("$baseDir\$file")
    [System.IO.Directory]::CreateDirectory($parent) | Out-Null
    if (-not [System.IO.File]::Exists("$baseDir\$file")) {
        [System.IO.File]::Create("$baseDir\$file").Close()
    }
}

Write-Host "Project structure created successfully via .NET APIs!"
