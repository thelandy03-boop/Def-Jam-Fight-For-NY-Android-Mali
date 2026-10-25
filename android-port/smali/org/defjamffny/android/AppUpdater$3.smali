.class Lorg/defjamffny/android/AppUpdater$3;
.super Ljava/lang/Object;
.source "AppUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/defjamffny/android/AppUpdater;->checkInstallPermissionAndDownload(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lorg/defjamffny/android/AppUpdater$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/defjamffny/android/AppUpdater$3;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 174
    iget-object p1, p0, Lorg/defjamffny/android/AppUpdater$3;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lorg/defjamffny/android/AppUpdater$3;->val$downloadUrl:Ljava/lang/String;

    # invokes: Lorg/defjamffny/android/AppUpdater;->startDownload(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {p1, p2}, Lorg/defjamffny/android/AppUpdater;->access$300(Landroid/app/Activity;Ljava/lang/String;)V

    .line 175
    return-void
.end method
