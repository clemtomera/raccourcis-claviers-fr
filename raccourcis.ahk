#Requires AutoHotkey v2.0
; ========================================
; Raccourcis typographiques FR
; ========================================

; --- Auto-installation : copie du script dans Startup ---
startup := A_Startup "\raccourcis.ahk"

try {
    FileCopy(A_ScriptFullPath, startup, true)
    MsgBox(
        "Installation réussie !`n`n"
      . "Le fichier « raccourcis.ahk » a été copié dans le dossier de démarrage Windows.`n"
      . "Vos raccourcis seront actifs automatiquement à chaque redémarrage.`n`n"
      . "Pour désinstaller :`n"
      . "  - Appuyez sur Win + R`n"
      . "  - Tapez : shell:startup`n"
      . "  - Supprimez le fichier « raccourcis.ahk »"
      , "Installation des raccourcis typographiques"
      , "Iconi"
    )
} catch Error as e {
    MsgBox("Erreur lors de l’installation : " e.Message, "Installation échouée", "Iconx")
}

; --- Raccourcis ---

!Space::Send("{U+00A0}")         ; Espace insécable
+!Space::Send("{U+202F}")        ; Espace fine insécable
!(::Send("{U+00AB}{U+00A0}")     ; «
!)::Send("{U+00A0}{U+00BB}")     ; »
!'::Send("{U+2019}")             ; Apostrophe typographique
!;::Send("{U+00B7}")             ; Point médian
+!;::Send("{U+2026}")            ; …
!é::Send("{U+00C9}")             ; É
!è::Send("{U+00C8}")             ; È
!à::Send("{U+00C0}")             ; À
!ç::Send("{U+00C7}")             ; Ç
!a::Send("{U+00E6}")             ; æ
+!a::Send("{U+00C6}")            ; Æ
!o::Send("{U+0153}")             ; œ
+!o::Send("{U+0152}")            ; Œ
