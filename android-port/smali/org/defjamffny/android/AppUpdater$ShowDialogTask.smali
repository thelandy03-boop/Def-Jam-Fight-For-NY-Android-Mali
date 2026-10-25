.class Lorg/defjamffny/android/AppUpdater$ShowDialogTask;
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
    name = "ShowDialogTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final downloadUrl:Ljava/lang/String;

.field private final newVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;->activity:Landroid/app/Activity;

    .line 108
    iput-object p2, p0, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;->newVersion:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;->downloadUrl:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 114
    iget-object v0, p0, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;->newVersion:Ljava/lang/String;

    iget-object v2, p0, Lorg/defjamffny/android/AppUpdater$ShowDialogTask;->downloadUrl:Ljava/lang/String;

    # invokes: Lorg/defjamffny/android/AppUpdater;->showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/defjamffny/android/AppUpdater;->access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method
