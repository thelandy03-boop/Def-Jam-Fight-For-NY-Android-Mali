.class Lorg/defjamffny/android/AppUpdater$DownloadTask;
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
    name = "DownloadTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final downloadUrl:Ljava/lang/String;

.field private final progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .registers 4

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->activity:Landroid/app/Activity;

    .line 259
    iput-object p2, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->progress:Landroid/app/ProgressDialog;

    .line 261
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 266
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 269
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 271
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 272
    const/16 v2, 0x12e

    if-eq v1, v2, :cond_28

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_28

    const/16 v2, 0x133

    if-eq v1, v2, :cond_28

    const/16 v2, 0x134

    if-ne v1, v2, :cond_3f

    .line 273
    :cond_28
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 275
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 277
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 280
    :cond_3f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 281
    iget-object v2, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 282
    if-nez v2, :cond_51

    iget-object v2, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 283
    :cond_51
    new-instance v3, Ljava/io/File;

    const-string v4, "DefJam-Update.apk"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 286
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 288
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 289
    const-wide/16 v6, 0x0

    .line 291
    :goto_67
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8a

    .line 292
    int-to-long v9, v8

    add-long/2addr v6, v9

    .line 293
    if-lez v1, :cond_85

    .line 294
    const-wide/16 v9, 0x64

    mul-long v9, v9, v6

    int-to-long v11, v1

    div-long/2addr v9, v11

    long-to-int v10, v9

    .line 295
    iget-object v9, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->activity:Landroid/app/Activity;

    new-instance v11, Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;

    iget-object v12, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->progress:Landroid/app/ProgressDialog;

    invoke-direct {v11, v12, v10}, Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;-><init>(Landroid/app/ProgressDialog;I)V

    invoke-virtual {v9, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    :cond_85
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_67

    .line 300
    :cond_8a
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 301
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 302
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 303
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 305
    iget-object v0, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;

    iget-object v2, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->progress:Landroid/app/ProgressDialog;

    invoke-direct {v1, v0, v2, v3}, Lorg/defjamffny/android/AppUpdater$FinishDownloadTask;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a2
    .catchall {:try_start_0 .. :try_end_a2} :catchall_a3

    .line 309
    goto :goto_b4

    .line 307
    :catchall_a3
    move-exception v0

    .line 308
    iget-object v1, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->activity:Landroid/app/Activity;

    new-instance v2, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;

    iget-object v3, p0, Lorg/defjamffny/android/AppUpdater$DownloadTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lorg/defjamffny/android/AppUpdater$FailDownloadTask;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    :goto_b4
    return-void
.end method
