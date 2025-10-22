<div align="center">
    <div>
            <h3><b>BARBER HUB (GOBER)</b></h3>
            <p><i>Boking barbershop</i></p>
    </div>      
</div>

## Getting started

**Prerequisites :**

- Flutter SDK : 3.35.6
- IDE of your choice (e.g., VS Code, or Android Studio)

**Installation :**

1. Clone the repository
```bash
$ git clone https://github.com/Galuhdap/barberHub-app
```
2. Navigate to project directory
```bash
$ cd barberHub-app
```
3. Install Dependencies
```bash
$ flutter pub get
```

**Asset Generator :**

- add in dev_dependencies

  - build_runner
  - flutter_gen_runner

- when you add image static or icon just run
  - dart run build_runner build


**Launch Settings**

1.  **VS Code**

        {
            "version": "0.2.0",
            "configurations": [
            {
                "name": "Gobar Hub Dev",
                "type": "dart",
                "request": "launch",
                "program": "lib/main_dev.dart",
                "args": ["--flavor", "dev"]
            },
            {
                "name": "Gobar Hub Staging",
                "type": "dart",
                "request": "launch",
                "program": "lib/main_staging.dart",
                "args": ["--flavor", "staging"]
            },
            {
                "name": "Gobar Hub Prod",
                "type": "dart",
                "request": "launch",
                "program": "lib/main_prod.dart",
                "args": ["--flavor", "prod"]
            }
        ]
        }


2.  **Android Studio**

`--flavor prod --no-enable-impeller`
