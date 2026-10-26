.class public Lorg/defjamffny/android/AppUpdater;
.super Ljava/lang/Object;
.source "AppUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/defjamffny/android/AppUpdater$CheckTask;,
        Lorg/defjamffny/android/AppUpdater$DownloadTask;,
        Lorg/defjamffny/android/AppUpdater$FailDownloadTask;,
        Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;,
        Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;,
        Lorg/defjamffny/android/AppUpdater$ShowDialogTask;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:Ljava/lang/String; = "v1.1.3"

.field public static final GITHUB_REPO:Ljava/lang/String; = "thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali"

.field private static updateCheckStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lorg/defjamffny/android/AppUpdater;->updateCheckStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lorg/defjamffny/android/AppUpdater;->isNewerVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-static {p0, p1, p2}, Lorg/defjamffny/android/AppUpdater;->showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lorg/defjamffny/android/AppUpdater;->checkInstallPermissionAndDownload(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lorg/defjamffny/android/AppUpdater;->startDownload(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static checkForUpdates(Landroid/app/Activity;)V
    .registers 3

    .line 38
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1f

    .line 39
    :cond_9
    sget-boolean v0, Lorg/defjamffny/android/AppUpdater;->updateCheckStarted:Z

    if-eqz v0, :cond_e

    return-void

    .line 40
    :cond_e
    const/4 v0, 0x1

    sput-boolean v0, Lorg/defjamffny/android/AppUpdater;->updateCheckStarted:Z

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/defjamffny/android/AppUpdater$CheckTask;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/AppUpdater$CheckTask;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void

    .line 38
    :cond_1f
    :goto_1f
    return-void
.end method

.method private static checkInstallPermissionAndDownload(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_37

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_37

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    const-string v1, "Permiso necesario"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    const-string v1, "Para actualizar autom\u00e1ticamente sin salir del juego, activa el permiso de \'Instalar aplicaciones desconocidas\'."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v1, Lorg/defjamffny/android/AppUpdater$2;

    invoke-direct {v1, p0, p1}, Lorg/defjamffny/android/AppUpdater$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v2, "Configurar"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    new-instance v1, Lorg/defjamffny/android/AppUpdater$3;

    invoke-direct {v1, p0, p1}, Lorg/defjamffny/android/AppUpdater$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p0, "Omitir"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 178
    return-void

    .line 182
    :cond_37
    invoke-static {p0, p1}, Lorg/defjamffny/android/AppUpdater;->startDownload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static installApk(Landroid/content/Context;Ljava/io/File;)V
    .registers 14

    .line 314
    if-eqz p1, :cond_ca

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_ca

    .line 318
    :cond_a
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v2

    .line 319
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v3, v0}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 322
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2a

    .line 323
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequireUserAction(I)V

    .line 326
    :cond_2a
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v3

    .line 327
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    .line 329
    const-string v7, "defjam_update"

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v4

    .line 330
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 331
    const/high16 v7, 0x10000

    new-array v7, v7, [B

    .line 333
    :goto_48
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_53

    .line 334
    invoke-virtual {v4, v7, v1, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_48

    .line 336
    :cond_53
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 337
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 338
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 340
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lorg/defjamffny/android/UpdateReceiver;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    nop

    .line 342
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_6b

    .line 343
    const/high16 v5, 0xa000000

    goto :goto_6d

    .line 342
    :cond_6b
    const/high16 v5, 0x8000000

    .line 345
    :goto_6d
    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 346
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 347
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_7b
    .catchall {:try_start_c .. :try_end_7b} :catchall_7c

    .line 348
    return-void

    .line 349
    :catchall_7c
    move-exception v2

    .line 354
    :try_start_7d
    const-class v2, Landroid/os/StrictMode;

    const-string v3, "disableDeathOnFileUriExposure"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 355
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_8e

    goto :goto_8f

    .line 356
    :catchall_8e
    move-exception v1

    :goto_8f
    nop

    .line 358
    :try_start_90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const p1, 0x10000001

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a9
    .catchall {:try_start_90 .. :try_end_a9} :catchall_aa

    .line 364
    goto :goto_c9

    .line 362
    :catchall_aa
    move-exception p1

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No se pudo iniciar la actualizaci\u00f3n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 365
    :goto_c9
    return-void

    .line 314
    :cond_ca
    :goto_ca
    return-void
.end method

.method private static isNewerVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 120
    const-string v0, "\\."

    const-string v1, ""

    const-string v2, "[^0-9.]"

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 125
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 126
    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_41

    .line 127
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    .line 128
    :goto_2b
    array-length v4, p1

    if-ge v1, v4, :cond_35

    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_40

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    .line 129
    :goto_36
    if-le v2, v4, :cond_3a

    const/4 p0, 0x1

    return p0

    .line 130
    :cond_3a
    if-ge v2, v4, :cond_3d

    return v3

    .line 126
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 132
    :catchall_40
    move-exception p0

    :cond_41
    nop

    .line 133
    return v3
.end method

.method private static showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 137
    if-eqz p0, :cond_41

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_41

    .line 139
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nueva actualizaci\u00f3n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 141
    const-string p1, "Se ha detectado una nueva versi\u00f3n optimizada para tu tel\u00e9fono.\n\n\u00bfDeseas descargarla e instalarla autom\u00e1ticamente?"

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    new-instance p1, Lorg/defjamffny/android/AppUpdater$1;

    invoke-direct {p1, p0, p2}, Lorg/defjamffny/android/AppUpdater$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p0, "Actualizar ahora"

    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const-string p0, "M\u00e1s tarde"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 151
    return-void

    .line 137
    :cond_41
    :goto_41
    return-void
.end method

.method private static startDownload(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 186
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 187
    const-string v1, "Actualizando Def Jam"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    const-string v1, "Descargando actualizaci\u00f3n..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 190
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 192
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 194
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/defjamffny/android/AppUpdater$DownloadTask;

    invoke-direct {v2, p0, p1, v0}, Lorg/defjamffny/android/AppUpdater$DownloadTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method
