.class Lorg/defjamffny/android/AppUpdater$FailDownloadTask;
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
    name = "FailDownloadTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final error:Ljava/lang/String;

.field private final progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .registers 4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;->activity:Landroid/app/Activity;

    .line 239
    iput-object p2, p0, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;->progress:Landroid/app/ProgressDialog;

    .line 240
    iput-object p3, p0, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;->error:Ljava/lang/String;

    .line 241
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 246
    :try_start_0
    iget-object v0, p0, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_7

    .line 247
    :catchall_6
    move-exception v0

    :goto_7
    nop

    .line 248
    iget-object v0, p0, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;->activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error de descarga: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    return-void
.end method
