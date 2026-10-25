.class public Lorg/defjamffny/android/AutoSetup;
.super Ljava/lang/Object;
.source "AutoSetup.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequestPermission(Landroid/app/Activity;)Z
    .registers 4

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_4f

    .line 22
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 23
    const-string v0, "Def Jam necesita acceso a los archivos para cargar el juego"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3e} :catch_3f

    .line 33
    goto :goto_4d

    .line 28
    :catch_3f
    move-exception v0

    .line 30
    :try_start_40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_4b

    goto :goto_4c

    .line 32
    :catch_4b
    move-exception p0

    :goto_4c
    nop

    .line 34
    :goto_4d
    const/4 p0, 0x0

    return p0

    .line 37
    :cond_4f
    return v2
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 131
    if-eqz p0, :cond_24

    .line 132
    array-length v0, p0

    :goto_11
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    .line 133
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/defjamffny/android/AutoSetup;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 136
    :cond_24
    goto :goto_45

    .line 137
    :cond_25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 138
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 141
    :goto_33
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3d

    .line 142
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_33

    .line 144
    :cond_3d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_45

    .line 147
    :catch_44
    move-exception p0

    :goto_45
    nop

    .line 148
    return-void
.end method

.method public static ensureGameFiles(Landroid/app/Activity;)Z
    .registers 7

    .line 47
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->getGameDir()Ljava/io/File;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/File;

    const-string v2, "default.xbe"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 50
    return v3

    .line 53
    :cond_13
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->findXbe()Ljava/io/File;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_45

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 57
    invoke-static {v1, v0}, Lorg/defjamffny/android/AutoSetup;->setupGameFolder(Ljava/io/File;Ljava/io/File;)V

    .line 58
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 59
    const-string v0, "\u00a1Archivos del juego configurados autom\u00e1ticamente!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 60
    return v3

    .line 65
    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method public static findXbe()Ljava/io/File;
    .registers 4

    .line 69
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3b

    .line 72
    :cond_d
    new-instance v1, Ljava/io/File;

    const-string v2, "DefJamFFNY"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_22

    .line 74
    invoke-static {v1, v3}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_22

    return-object v1

    .line 78
    :cond_22
    new-instance v1, Ljava/io/File;

    const-string v2, "Download"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 80
    invoke-static {v1, v3}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_36

    return-object v1

    .line 84
    :cond_36
    invoke-static {v0, v3}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 70
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGameDir()Ljava/io/File;
    .registers 3

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/io/File;

    const-string v2, "DefJamFFNY"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/File;

    const-string v2, "game"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static searchDir(Ljava/io/File;I)Ljava/io/File;
    .registers 8

    .line 88
    const/4 v0, 0x0

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_62

    if-gez p1, :cond_c

    goto :goto_62

    .line 89
    :cond_c
    new-instance v1, Ljava/io/File;

    const-string v2, "default.xbe"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    .line 92
    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 93
    if-nez p0, :cond_21

    return-object v0

    .line 95
    :cond_21
    array-length v1, p0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_61

    aget-object v3, p0, v2

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 98
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

    .line 99
    :cond_55
    add-int/lit8 v4, p1, -0x1

    invoke-static {v3, v4}, Lorg/defjamffny/android/AutoSetup;->searchDir(Ljava/io/File;I)Ljava/io/File;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_5e

    return-object v3

    .line 95
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 104
    :cond_61
    return-object v0

    .line 88
    :cond_62
    :goto_62
    return-object v0
.end method

.method private static setupGameFolder(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 108
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

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 111
    :cond_16
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 112
    return-void

    .line 114
    :cond_1d
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 116
    if-eqz p0, :cond_41

    .line 117
    array-length v0, p0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_41

    aget-object v2, p0, v1

    .line 118
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 120
    invoke-static {v2, v3}, Lorg/defjamffny/android/AutoSetup;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 117
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 124
    :cond_41
    return-void
.end method
