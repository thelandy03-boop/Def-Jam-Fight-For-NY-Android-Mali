.class public Lorg/defjamffny/android/AutoSetup;
.super Ljava/lang/Object;
.source "AutoSetup.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequestPermission(Landroid/app/Activity;)Z
    .registers 6

    .line 22
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v1, 0x0

    if-eqz p0, :cond_60

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_60

    .line 25
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2a

    .line 27
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_29

    .line 28
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v0, v2, v4

    const/16 v0, 0x64

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_28

    goto :goto_29

    .line 33
    :catchall_28
    move-exception v0

    :cond_29
    :goto_29
    nop

    .line 37
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_5f

    .line 39
    :try_start_30
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Permiso de Archivos Requerido"

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Para cargar el juego, Def Jam necesita acceso a los archivos.\n\nToca \'Configurar\' y activa el interruptor \'Permitir administrar todos los archivos\'."

    .line 42
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Configurar"

    new-instance v3, Lorg/defjamffny/android/AutoSetup$1;

    invoke-direct {v3, p0}, Lorg/defjamffny/android/AutoSetup$1;-><init>(Landroid/app/Activity;)V

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "M\u00e1s tarde"

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_5d

    .line 60
    return v1

    .line 62
    :catchall_5d
    move-exception p0

    :cond_5e
    nop

    .line 64
    :cond_5f
    return v4

    .line 22
    :cond_60
    :goto_60
    return v1
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 183
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 185
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 186
    if-eqz p0, :cond_24

    .line 187
    array-length v0, p0

    :goto_11
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    .line 188
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/defjamffny/android/AutoSetup;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 191
    :cond_24
    goto :goto_45

    .line 192
    :cond_25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 193
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 194
    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 196
    :goto_33
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3d

    .line 197
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_33

    .line 199
    :cond_3d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_45

    .line 202
    :catch_44
    move-exception p0

    :goto_45
    nop

    .line 203
    return-void
.end method

.method public static ensureGameFiles(Landroid/app/Activity;)Z
    .registers 7

    .line 96
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->getGameDir()Ljava/io/File;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/io/File;

    const-string v2, "default.xbe"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 99
    return v3

    .line 102
    :cond_13
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->findXbe()Ljava/io/File;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_45

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 106
    invoke-static {v1, v0}, Lorg/defjamffny/android/AutoSetup;->setupGameFolder(Ljava/io/File;Ljava/io/File;)V

    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 108
    const-string v0, "\u00a1Archivos del juego configurados autom\u00e1ticamente!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 109
    return v3

    .line 114
    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method public static findXbe()Ljava/io/File;
    .registers 5

    .line 119
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_3c

    .line 122
    :cond_e
    new-instance v2, Ljava/io/File;

    const-string v3, "DefJamFFNY"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_23

    .line 124
    invoke-static {v2, v4}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_23

    return-object v2

    .line 128
    :cond_23
    new-instance v2, Ljava/io/File;

    const-string v3, "Download"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 130
    invoke-static {v2, v4}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_37

    return-object v2

    .line 134
    :cond_37
    invoke-static {v1, v4}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    return-object v0

    .line 120
    :cond_3c
    :goto_3c
    return-object v0

    .line 135
    :catchall_3d
    move-exception v1

    .line 136
    return-object v0
.end method

.method public static getGameDir()Ljava/io/File;
    .registers 3

    .line 90
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/File;

    const-string v2, "DefJamFFNY"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v2, "game"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static searchDir(Ljava/io/File;I)Ljava/io/File;
    .registers 8

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_62

    if-gez p1, :cond_c

    goto :goto_62

    .line 142
    :cond_c
    new-instance v1, Ljava/io/File;

    const-string v2, "default.xbe"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    .line 145
    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 146
    if-nez p0, :cond_21

    return-object v0

    .line 148
    :cond_21
    array-length v1, p0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_61

    aget-object v3, p0, v2

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 150
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 151
    const-string v5, "def"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "jam"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "droid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "game"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 152
    :cond_55
    add-int/lit8 v4, p1, -0x1

    invoke-static {v3, v4}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v3

    .line 153
    if-eqz v3, :cond_5e

    return-object v3

    .line 148
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 157
    :cond_61
    return-object v0

    .line 141
    :cond_62
    :goto_62
    return-object v0
.end method

.method private static setupGameFolder(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 162
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_16

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 165
    :cond_16
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 166
    return-void

    .line 168
    :cond_1d
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 170
    if-eqz p0, :cond_42

    .line 171
    array-length v0, p0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_42

    aget-object v2, p0, v1

    .line 172
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 174
    invoke-static {v2, v3}, Lorg/defjamffny/android/AutoSetup;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_41

    .line 171
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 178
    :catchall_41
    move-exception p0

    :cond_42
    nop

    .line 179
    return-void
.end method

.method public static showMissingFilesDialog(Landroid/app/Activity;)V
    .registers 4

    .line 68
    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5e

    .line 71
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Archivos Faltantes] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (default.xbe no encontrado)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/defjamffny/android/CrashReporter;->buildCrashReport(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Lorg/defjamffny/android/CrashReporter;->postIssueAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    const-string v2, "Faltan los archivos del juego (2.3 GB)"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 78
    const-string v2, "No se encontr\u00f3 el archivo \'default.xbe\'.\n\n\u00bfC\u00f3mo solucionarlo?\n1. Descarga el paquete de 2.3 GB desde MediaFire.\n2. Descompr\u00edmelo en tu memoria interna.\n3. Aseg\u00farate de colocar los archivos en:\n/sdcard/DefJamFFNY/game/\n\n(Aseg\u00farate de no dejar los archivos comprimidos dentro de un .zip)"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    const-string v2, "Entendido"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/defjamffny/android/AutoSetup$2;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/AutoSetup$2;-><init>(Landroid/app/Activity;)V

    .line 80
    const-string p0, "Conceder Permisos"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 87
    return-void

    .line 68
    :cond_5e
    :goto_5e
    return-void
.end method
