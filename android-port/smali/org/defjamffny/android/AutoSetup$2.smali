.class Lorg/defjamffny/android/AutoSetup$2;
.super Ljava/lang/Object;
.source "AutoSetup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/defjamffny/android/AutoSetup;->showMissingFilesDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lorg/defjamffny/android/AutoSetup$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 83
    const/4 p1, 0x0

    # setter for: Lorg/defjamffny/android/AutoSetup;->permissionDialogShown:Z
    invoke-static {p1}, Lorg/defjamffny/android/AutoSetup;->access$002(Z)Z

    .line 84
    iget-object p1, p0, Lorg/defjamffny/android/AutoSetup$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/defjamffny/android/AutoSetup;->checkAndRequestPermission(Landroid/app/Activity;)Z

    .line 85
    return-void
.end method
