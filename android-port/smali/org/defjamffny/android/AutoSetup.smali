.class public Lorg/defjamffny/android/AutoSetup;
.super Ljava/lang/Object;
.source "AutoSetup.java"


# static fields
.field private static permissionDialogShown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lorg/defjamffny/android/AutoSetup;->permissionDialogShown:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 19
    sput-boolean p0, Lorg/defjamffny/android/AutoSetup;->permissionDialogShown:Z

    return p0
.end method

.method public static checkAndRequestPermission(Landroid/app/Activity;)Z
    .registers 6

    .line 24
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v1, 0x0

    if-eqz p0, :cond_6f

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6f

    .line 25
    :cond_c
    sget-boolean v2, Lorg/defjamffny/android/AutoSetup;->permissionDialogShown:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    .line 27
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_49

    .line 29
    :try_start_18
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_48

    .line 30
    sput-boolean v3, Lorg/defjamffny/android/AutoSetup;->permissionDialogShown:Z

    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Permiso de Archivos Requerido"

    .line 32
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Para cargar el juego, Def Jam necesita acceso a los archivos.\n\nToca \'Configurar\' y activa el interruptor \'Permitir administrar todos los archivos\'."

    .line 33
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Configurar"

    new-instance v4, Lorg/defjamffny/android/AutoSetup$1;

    invoke-direct {v4, p0}, Lorg/defjamffny/android/AutoSetup$1;-><init>(Landroid/app/Activity;)V

    .line 34
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "M\u00e1s tarde"

    .line 49
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_47

    .line 51
    return v1

    .line 53
    :catchall_47
    move-exception p0

    :cond_48
    goto :goto_6e

    .line 54
    :cond_49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_6e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v2, v4, :cond_6e

    .line 56
    :try_start_55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6d

    .line 57
    sput-boolean v3, Lorg/defjamffny/android/AutoSetup;->permissionDialogShown:Z

    .line 58
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v0, v2, v3

    const/16 v0, 0x64

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_6c

    goto :goto_6d

    .line 63
    :catchall_6c
    move-exception p0

    :cond_6d
    :goto_6d
    nop

    .line 65
    :cond_6e
    :goto_6e
    return v3

    .line 24
    :cond_6f
    :goto_6f
    return v1
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 167
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 168
    if-eqz p0, :cond_24

    .line 169
    array-length v0, p0

    :goto_11
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    .line 170
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/defjamffny/android/AutoSetup;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 173
    :cond_24
    goto :goto_45

    .line 174
    :cond_25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 175
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 176
    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 178
    :goto_33
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3d

    .line 179
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_33

    .line 181
    :cond_3d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 182
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_45

    .line 184
    :catch_44
    move-exception p0

    :goto_45
    nop

    .line 185
    return-void
.end method

.method public static ensureGameFiles(Landroid/app/Activity;)Z
    .registers 7

    .line 97
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->getGameDir()Ljava/io/File;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/io/File;

    const-string v2, "default.xbe"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 100
    return v3

    .line 103
    :cond_13
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->findXbe()Ljava/io/File;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_45

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 107
    invoke-static {v1, v0}, Lorg/defjamffny/android/AutoSetup;->setupGameFolder(Ljava/io/File;Ljava/io/File;)V

    .line 108
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 109
    const-string v0, "\u00a1Archivos del juego configurados autom\u00e1ticamente!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 110
    return v3

    .line 115
    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method public static findXbe()Ljava/io/File;
    .registers 7

    .line 120
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_72

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_72

    .line 123
    :cond_e
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "DefJamFFNY/game/default.xbe"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/io/File;

    const-string v6, "DefJamFFNY/default.xbe"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Ljava/io/File;

    const-string v6, "Download/DefJamFFNY/game/default.xbe"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-instance v4, Ljava/io/File;

    const-string v6, "Download/DefJamFFNY/default.xbe"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v4, v3, v6

    new-instance v4, Ljava/io/File;

    const-string v6, "Download/Def-Jam-Android/game/default.xbe"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v4, v3, v6

    new-instance v4, Ljava/io/File;

    const-string v6, "Download/default.xbe"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v4, v3, v6

    new-instance v4, Ljava/io/File;

    const-string v6, "Def-Jam/game/default.xbe"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v4, v3, v6

    new-instance v4, Ljava/io/File;

    const-string v6, "Def-Jam/default.xbe"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v4, v3, v1

    .line 133
    nop

    :goto_63
    if-ge v5, v2, :cond_71

    aget-object v1, v3, v5

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_73

    if-eqz v4, :cond_6e

    return-object v1

    .line 133
    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 136
    :cond_71
    return-object v0

    .line 121
    :cond_72
    :goto_72
    return-object v0

    .line 137
    :catchall_73
    move-exception v1

    .line 138
    return-object v0
.end method

.method public static getGameDir()Ljava/io/File;
    .registers 3

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/io/File;

    const-string v2, "DefJamFFNY"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v2, "game"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static setupGameFolder(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 144
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

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 147
    :cond_16
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 148
    return-void

    .line 150
    :cond_1d
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 151
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 152
    if-eqz p0, :cond_42

    .line 153
    array-length v0, p0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_42

    aget-object v2, p0, v1

    .line 154
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 156
    invoke-static {v2, v3}, Lorg/defjamffny/android/AutoSetup;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_41

    .line 153
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 160
    :catchall_41
    move-exception p0

    :cond_42
    nop

    .line 161
    return-void
.end method

.method public static showMissingFilesDialog(Landroid/app/Activity;)V
    .registers 4

    .line 69
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

    .line 87
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 88
    return-void

    .line 69
    :cond_5e
    :goto_5e
    return-void
.end method
