.class Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;
.super Ljava/lang/Object;
.source "AppUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/defjamffny/android/AppUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishDownloadTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final apkFile:Ljava/io/File;

.field private final progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/io/File;)V
    .registers 4

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;->activity:Landroid/app/Activity;

    .line 219
    iput-object p2, p0, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;->progress:Landroid/app/ProgressDialog;

    .line 220
    iput-object p3, p0, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;->apkFile:Ljava/io/File;

    .line 221
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_7

    .line 227
    :catchall_6
    move-exception v0

    :goto_7
    nop

    .line 228
    iget-object v0, p0, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;->apkFile:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/defjamffny/android/AppUpdater;->installApk(Landroid/content/Context;Ljava/io/File;)V

    .line 229
    return-void
.end method
