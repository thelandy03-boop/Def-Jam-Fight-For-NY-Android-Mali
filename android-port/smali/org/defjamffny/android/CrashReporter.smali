.class public Lorg/defjamffny/android/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;,
        Lorg/defjamffny/android/CrashReporter$SyncSender;,
        Lorg/defjamffny/android/CrashReporter$PendingFlusher;
    }
.end annotation


# static fields
.field private static final ENCODED_TOKEN:[B

.field public static final GITHUB_REPO:Ljava/lang/String; = "thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/16 v0, 0x5d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/defjamffny/android/CrashReporter;->ENCODED_TOKEN:[B

    return-void

    :array_a
    .array-data 1
        0x3dt
        0x33t
        0x2et
        0x32t
        0x2ft
        0x38t
        0x5t
        0x2at
        0x3bt
        0x2et
        0x5t
        0x6bt
        0x6bt
        0x19t
        0x14t
        0x1et
        0xat
        0x9t
        0xbt
        0x1bt
        0x6at
        0x1dt
        0x6ft
        0x16t
        0x69t
        0x2et
        0x28t
        0x39t
        0x39t
        0x6at
        0x23t
        0x29t
        0x6ft
        0x5t
        0x13t
        0x6dt
        0x12t
        0x6dt
        0x6dt
        0x2bt
        0x1dt
        0x19t
        0x16t
        0xdt
        0x34t
        0x18t
        0x2at
        0x12t
        0x6et
        0x2at
        0x3dt
        0x10t
        0xat
        0x15t
        0x35t
        0x6et
        0x12t
        0x6et
        0x2dt
        0x6ct
        0xat
        0x2ft
        0x0t
        0x3t
        0x39t
        0x3ct
        0x3et
        0x6at
        0x63t
        0x37t
        0x1dt
        0xct
        0x3bt
        0x16t
        0x6ft
        0xft
        0xet
        0x6et
        0xat
        0x6et
        0x3t
        0x6et
        0x13t
        0x10t
        0x1dt
        0x11t
        0xdt
        0x68t
        0x37t
        0xbt
        0x9t
        0xet
        0x69t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/defjamffny/android/CrashReporter;->context:Landroid/content/Context;

    .line 44
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/defjamffny/android/CrashReporter;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 45
    return-void
.end method

.method public static buildCrashReport(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 10

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v2, "### Def Jam Crash & Diagnostic Report\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v2, "- **Fecha:** "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "- **Dispositivo:** `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "`\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "- **Hardware/Board:** `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " / "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "- **Android:** `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "` (SDK "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "- **ABIs Soportadas:** `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v1, :cond_9b

    .line 186
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v6, v1

    const/4 v7, 0x0

    :goto_8d
    if-ge v7, v6, :cond_9b

    aget-object v8, v1, v7

    .line 187
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    .line 190
    :cond_9b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_c8

    .line 194
    :try_start_a4
    const-string v1, "- **Permiso All Files (MANAGE_EXTERNAL_STORAGE):** `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b5
    .catchall {:try_start_a4 .. :try_end_b5} :catchall_b6

    .line 197
    goto :goto_c8

    .line 195
    :catchall_b6
    move-exception v1

    .line 196
    const-string v3, "- **Permiso All Files:** Error verificando ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_c8
    :goto_c8
    :try_start_c8
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->getGameDir()Ljava/io/File;

    move-result-object v1

    .line 202
    new-instance v3, Ljava/io/File;

    const-string v5, "default.xbe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    const-string v5, "- **Ruta del juego esperada:** `"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "- **default.xbe existe:** `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {}, Lorg/defjamffny/android/AutoSetup;->findXbe()Ljava/io/File;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_10d

    .line 208
    const-string v3, "- **default.xbe encontrado en:** `"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_112

    .line 210
    :cond_10d
    const-string v1, "- **default.xbe encontrado en:** `NINGUN LUGAR (Faltan archivos del juego)`\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_112
    .catchall {:try_start_c8 .. :try_end_112} :catchall_113

    .line 214
    :goto_112
    goto :goto_125

    .line 212
    :catchall_113
    move-exception v1

    .line 213
    const-string v3, "- **Error comprobando archivos:** `"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_125
    const-string v1, "\n```\n"

    if-eqz p0, :cond_145

    .line 217
    const-string v3, "\n```text\n--- EXCEPCION / STACK TRACE ---\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 219
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 220
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_145
    const-string p0, "\n```text\n--- LOGCAT RECIENTE ---\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :try_start_14a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v3, "logcat -d -t 60"

    invoke-virtual {p0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 227
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 229
    :cond_162
    :goto_162
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b8

    .line 230
    const-string v4, "defjam"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "SDL"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "vulkan"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "DEBUG"

    .line 231
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "FATAL"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "zygote"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "mali"

    .line 232
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "AutoSetup"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b0

    const-string v4, "AppUpdater"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_162

    .line 233
    :cond_1b0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_162

    .line 236
    :cond_1b8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1bb
    .catchall {:try_start_14a .. :try_end_1bb} :catchall_1bc

    goto :goto_1bd

    .line 237
    :catchall_1bc
    move-exception p0

    :goto_1bd
    nop

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkAndSendPendingReports(Landroid/content/Context;)V
    .registers 3

    .line 343
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/defjamffny/android/CrashReporter$PendingFlusher;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/CrashReporter$PendingFlusher;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 344
    return-void
.end method

.method public static clearPendingReport(Landroid/content/Context;)V
    .registers 4

    .line 284
    const-string v0, "pending_crash.log"

    if-eqz p0, :cond_19

    .line 286
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_17

    goto :goto_18

    .line 288
    :catchall_17
    move-exception p0

    :cond_18
    :goto_18
    nop

    .line 291
    :cond_19
    :try_start_19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 292
    new-instance v1, Ljava/io/File;

    const-string v2, "DefJamFFNY"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_33

    goto :goto_34

    .line 295
    :catchall_33
    move-exception p0

    :cond_34
    :goto_34
    nop

    .line 296
    return-void
.end method

.method private static getGitHubToken()Ljava/lang/String;
    .registers 5

    .line 53
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/io/File;

    const-string v2, "DefJamFFNY/github_token.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 56
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 59
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-object v0

    .line 63
    :catchall_33
    move-exception v0

    :cond_34
    nop

    .line 66
    :try_start_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    sget-object v1, Lorg/defjamffny/android/CrashReporter;->ENCODED_TOKEN:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_4b

    aget-byte v4, v1, v3

    .line 68
    xor-int/lit8 v4, v4, 0x5a

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 70
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_50

    return-object v0

    .line 71
    :catchall_50
    move-exception v0

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public static install(Landroid/content/Context;)V
    .registers 2

    .line 48
    new-instance v0, Lorg/defjamffny/android/CrashReporter;

    invoke-direct {v0, p0}, Lorg/defjamffny/android/CrashReporter;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 49
    return-void
.end method

.method public static openGitHubIssue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 348
    const-string v0, "UTF-8"

    :try_start_2
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://github.com/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/issues/new?title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&body="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3b

    goto :goto_3c

    .line 354
    :catchall_3b
    move-exception p0

    :goto_3c
    nop

    .line 355
    return-void
.end method

.method public static postIssueAsync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;

    invoke-direct {v1, p0, p1}, Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method public static postIssueToGitHub(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 78
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lorg/defjamffny/android/CrashReporter;->getGitHubToken()Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_a5

    .line 83
    :cond_f
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://api.github.com/repos/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/issues"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 85
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 86
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "Accept"

    const-string v3, "application/vnd.github+json"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "User-Agent"

    const-string v3, "DefJamFFNY-CrashReporter/1.0"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 91
    const/16 v3, 0x1b58

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 92
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v4, "title"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string p0, "body"

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 99
    const-string p1, "crash-report"

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 100
    const-string p1, "automated"

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 101
    const-string p1, "labels"

    invoke-virtual {v3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 104
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 106
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 108
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 109
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_a6

    .line 110
    const/16 p1, 0xc9

    if-eq p0, p1, :cond_a3

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_a4

    :cond_a3
    const/4 v0, 0x1

    :cond_a4
    return v0

    .line 80
    :cond_a5
    :goto_a5
    return v0

    .line 111
    :catchall_a6
    move-exception p0

    .line 112
    return v0
.end method

.method public static saveLogToFile(Ljava/lang/String;)V
    .registers 6

    .line 245
    const-string v0, "UTF-8"

    const-string v1, "defjam_crash.log"

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 246
    new-instance v3, Ljava/io/File;

    const-string v4, "DefJamFFNY"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 248
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 251
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 253
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 256
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_3b

    goto :goto_3c

    .line 257
    :catchall_3b
    move-exception p0

    :goto_3c
    nop

    .line 258
    return-void
.end method

.method public static savePendingReport(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 262
    const-string v0, "UTF-8"

    const-string v1, "pending_crash.log"

    if-eqz p0, :cond_21

    .line 264
    :try_start_6
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    goto :goto_20

    .line 268
    :catchall_1f
    move-exception p0

    :goto_20
    nop

    .line 273
    :cond_21
    :try_start_21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 274
    new-instance v2, Ljava/io/File;

    const-string v3, "DefJamFFNY"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 276
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 279
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_44

    goto :goto_45

    .line 280
    :catchall_44
    move-exception p0

    :goto_45
    nop

    .line 281
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    .line 157
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p2}, Lorg/defjamffny/android/CrashReporter;->buildCrashReport(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lorg/defjamffny/android/CrashReporter;->saveLogToFile(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lorg/defjamffny/android/CrashReporter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/defjamffny/android/CrashReporter;->savePendingReport(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Crash Autom\u00e1tico] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/defjamffny/android/CrashReporter$SyncSender;

    iget-object v5, p0, Lorg/defjamffny/android/CrashReporter;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v2, v1}, Lorg/defjamffny/android/CrashReporter$SyncSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 164
    const-wide/16 v1, 0xdac

    invoke-virtual {v3, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_59

    .line 167
    iget-object v1, p0, Lorg/defjamffny/android/CrashReporter;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_62

    .line 168
    goto :goto_5e

    .line 165
    :catchall_59
    move-exception v1

    .line 167
    iget-object v1, p0, Lorg/defjamffny/android/CrashReporter;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_62

    .line 168
    :goto_5e
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_66

    .line 170
    :cond_62
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 172
    nop

    .line 173
    :goto_66
    return-void
.end method
