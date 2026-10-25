.class Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;
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
    name = "UpdateProgressTask"
.end annotation


# instance fields
.field private final percent:I

.field private final progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;I)V
    .registers 3

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;->progress:Landroid/app/ProgressDialog;

    .line 203
    iput p2, p0, Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;->percent:I

    .line 204
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 208
    iget-object v0, p0, Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;->progress:Landroid/app/ProgressDialog;

    iget v1, p0, Lorg/defjamffny/android/AppUpdater$UpdateProgressTask;->percent:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 209
    return-void
.end method
