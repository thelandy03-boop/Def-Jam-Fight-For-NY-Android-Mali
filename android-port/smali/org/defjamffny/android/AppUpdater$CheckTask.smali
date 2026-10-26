.class Lorg/defjamffny/android/AppUpdater$CheckTask;
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
    name = "CheckTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/defjamffny/android/AppUpdater$CheckTask;->activity:Landroid/app/Activity;

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 55
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://api.github.com/repos/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/releases/latest"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 57
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    const-string v2, "Accept"

    const-string v3, "application/vnd.github+json"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "User-Agent"

    const-string v3, "DefJamFFNY-Updater/1.0"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/16 v2, 0x1b58

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 64
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_b8

    .line 65
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    :goto_45
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 71
    :cond_4f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v3, "tag_name"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b8

    const-string v4, "v1.1.3"

    # invokes: Lorg/defjamffny/android/AppUpdater;->isNewerVersion(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lorg/defjamffny/android/AppUpdater;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 77
    const-string v4, "assets"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 78
    nop

    .line 79
    if-eqz v2, :cond_9b

    .line 80
    const/4 v4, 0x0

    :goto_79
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9b

    .line 81
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 82
    const-string v6, "name"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 84
    const-string v2, "browser_download_url"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    goto :goto_9c

    .line 80
    :cond_98
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 90
    :cond_9b
    const/4 v0, 0x0

    :goto_9c
    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 91
    nop

    .line 92
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;

    iget-object v5, p0, Lorg/defjamffny/android/AppUpdater$CheckTask;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5, v3, v0}, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_b8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bb
    .catchall {:try_start_2 .. :try_end_bb} :catchall_bc

    goto :goto_bd

    .line 97
    :catchall_bc
    move-exception v0

    :goto_bd
    nop

    .line 98
    return-void
.end method
