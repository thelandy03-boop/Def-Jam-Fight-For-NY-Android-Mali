.class Lorg/defjamffny/android/CrashReporter$SyncSender;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/defjamffny/android/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncSender"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final report:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lorg/defjamffny/android/CrashReporter$SyncSender;->context:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lorg/defjamffny/android/CrashReporter$SyncSender;->title:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lorg/defjamffny/android/CrashReporter$SyncSender;->report:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 148
    iget-object v0, p0, Lorg/defjamffny/android/CrashReporter$SyncSender;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/defjamffny/android/CrashReporter$SyncSender;->report:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/defjamffny/android/CrashReporter;->postIssueToGitHub(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 149
    iget-object v0, p0, Lorg/defjamffny/android/CrashReporter$SyncSender;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/defjamffny/android/CrashReporter;->clearPendingReport(Landroid/content/Context;)V

    .line 151
    :cond_f
    return-void
.end method
