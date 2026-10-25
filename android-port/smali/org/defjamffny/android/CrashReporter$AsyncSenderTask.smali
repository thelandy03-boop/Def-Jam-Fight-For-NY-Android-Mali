.class Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;
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
    name = "AsyncSenderTask"
.end annotation


# instance fields
.field private final report:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;->title:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;->report:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 127
    iget-object v0, p0, Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/defjamffny/android/CrashReporter$AsyncSenderTask;->report:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/defjamffny/android/CrashReporter;->postIssueToGitHub(Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    return-void
.end method
