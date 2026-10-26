.class public final Lorg/defjamffny/android/DefJamActivity;
.super Lorg/libsdl/app/SDLActivity;
.source "DefJamActivity.java"


# static fields
.field private static final ROOT_NAME:Ljava/lang/String; = "DefJamFFNY"


# instance fields
.field private appliedGamepad:Z

.field private appliedIdleHidden:Z

.field private appliedInputMode:I

.field private appliedOnline:Z

.field private controls:Lorg/defjamffny/android/VirtualControlsView;

.field private editor:Lorg/defjamffny/android/ControlsEditorPanel;

.field private final fpsUpdate:Ljava/lang/Runnable;

.field private fpsView:Landroid/widget/TextView;

.field private final hudHandler:Landroid/os/Handler;

.field private inputManager:Landroid/hardware/input/InputManager;

.field private final inputUpdate:Ljava/lang/Runnable;

.field private menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

.field private online:Lorg/defjamffny/android/OnlinePanel;

.field private onlineButton:Landroid/widget/Button;

.field private final padListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private final padTouch:Lorg/defjamffny/android/GamepadTouchState;

.field private portTouch:Lorg/defjamffny/android/PortTouchView;

.field private quickBar:Landroid/widget/FrameLayout;

.field private shortcutSettings:Lorg/defjamffny/android/MenuTouchSettings;

.field private startButton:Landroid/widget/Button;

.field private startHeld:Z

.field private final touchIdle:Lorg/defjamffny/android/TouchIdleState;


# direct methods
.method public static synthetic $r8$lambda$0ULYZT1nyIOcolTn-T3S_IpW3oo(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->releaseStart()V

    return-void
.end method

.method public static synthetic $r8$lambda$3Cd3n4xk6DWQY6uLFKp2gDfaA7Y(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->lambda$openControlsEditor$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$8-TWzD-1EXzPqE5ROg_XFIsW9K8(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->lambda$openControlsEditor$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$J1pqbs4DCnfk7_xzr75pI0oFPSY(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->forceLandscape()V

    return-void
.end method

.method public static synthetic $r8$lambda$LNpJcDoNhdOOdfoWugfzffgKSJQ(Lorg/defjamffny/android/DefJamActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/defjamffny/android/DefJamActivity;->lambda$installQuickBar$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnBA7G75YLuP64LGqz6v4gBicf8(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->lambda$installQuickBar$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$spVaaOqSGMy1NelgZ09tY3wjvMM(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->lambda$installQuickBar$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgeteditor(Lorg/defjamffny/android/DefJamActivity;)Lorg/defjamffny/android/ControlsEditorPanel;
    .locals 0

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfpsView(Lorg/defjamffny/android/DefJamActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethudHandler(Lorg/defjamffny/android/DefJamActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonline(Lorg/defjamffny/android/DefJamActivity;)Lorg/defjamffny/android/OnlinePanel;
    .locals 0

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadTouch(Lorg/defjamffny/android/DefJamActivity;)Lorg/defjamffny/android/GamepadTouchState;
    .locals 0

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->padTouch:Lorg/defjamffny/android/GamepadTouchState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettouchIdle(Lorg/defjamffny/android/DefJamActivity;)Lorg/defjamffny/android/TouchIdleState;
    .locals 0

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshGamepadVisibility(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->refreshGamepadVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInputMode(Lorg/defjamffny/android/DefJamActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisPhysicalGamepad(Landroid/view/InputDevice;)Z
    .locals 0

    invoke-static {p0}, Lorg/defjamffny/android/DefJamActivity;->isPhysicalGamepad(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetFps()F
    .locals 1

    invoke-static {}, Lorg/defjamffny/android/DefJamActivity;->nativeGetFps()F

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lorg/libsdl/app/SDLActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    .line 44
    new-instance v0, Lorg/defjamffny/android/TouchIdleState;

    invoke-direct {v0}, Lorg/defjamffny/android/TouchIdleState;-><init>()V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    .line 46
    new-instance v0, Lorg/defjamffny/android/GamepadTouchState;

    invoke-direct {v0}, Lorg/defjamffny/android/GamepadTouchState;-><init>()V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->padTouch:Lorg/defjamffny/android/GamepadTouchState;

    .line 47
    new-instance v0, Lorg/defjamffny/android/DefJamActivity$1;

    invoke-direct {v0, p0}, Lorg/defjamffny/android/DefJamActivity$1;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->padListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 132
    new-instance v0, Lorg/defjamffny/android/DefJamActivity$2;

    invoke-direct {v0, p0}, Lorg/defjamffny/android/DefJamActivity$2;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->inputUpdate:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lorg/defjamffny/android/DefJamActivity$3;

    invoke-direct {v0, p0}, Lorg/defjamffny/android/DefJamActivity$3;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->fpsUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method private applyStartStyle()V
    .locals 1

    .line 329
    invoke-static {p0}, Lorg/defjamffny/android/MenuTouchSettings;->read(Landroid/content/Context;)Lorg/defjamffny/android/MenuTouchSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->shortcutSettings:Lorg/defjamffny/android/MenuTouchSettings;

    .line 330
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->layoutQuickButtons()V

    return-void
.end method

.method private closeControlsEditor(Z)V
    .locals 3

    .line 374
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {v0}, Lorg/defjamffny/android/ControlsEditorPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 376
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz p1, :cond_2

    .line 377
    invoke-virtual {p1}, Lorg/defjamffny/android/VirtualControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 378
    new-instance p1, Lorg/defjamffny/android/VirtualControlsView;

    invoke-direct {p1, p0}, Lorg/defjamffny/android/VirtualControlsView;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    .line 379
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/defjamffny/android/XboxMenuControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 381
    :cond_1
    new-instance p1, Lorg/defjamffny/android/XboxMenuControlsView;

    invoke-direct {p1, p0}, Lorg/defjamffny/android/XboxMenuControlsView;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    .line 382
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    invoke-virtual {p1}, Lorg/defjamffny/android/VirtualControlsView;->bringToFront()V

    .line 384
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->applyStartStyle()V

    .line 386
    :cond_2
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lorg/defjamffny/android/VirtualControlsView;->setVisibility(I)V

    .line 387
    :cond_3
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 388
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    .line 389
    :cond_4
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    iput v0, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    .line 390
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->hideBars()V

    return-void
.end method

.method private configuredBool(Ljava/lang/String;Z)Z
    .locals 2

    .line 185
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->launchSettings()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    .line 187
    :cond_0
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private configuredInt(Ljava/lang/String;I)I
    .locals 2

    .line 180
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->launchSettings()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 182
    :cond_0
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private configuredString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 190
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->launchSettings()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 192
    :cond_0
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private dp(F)I
    .locals 0

    .line 161
    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private forceLandscape()V
    .locals 1

    const/4 v0, 0x6

    .line 225
    invoke-virtual {p0, v0}, Lorg/defjamffny/android/DefJamActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method private fpsBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .line 164
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0xb

    const/16 v2, 0xe

    const/16 v3, 0xbc

    const/16 v4, 0xa

    .line 165
    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 166
    invoke-direct {p0, v1}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 167
    invoke-direct {p0, v1}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result p0

    const/16 v1, 0xae

    const/16 v2, 0x43

    const/16 v3, 0xcd

    const/16 v4, 0xe6

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private hasGamepad()Z
    .locals 2

    .line 67
    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->padTouch:Lorg/defjamffny/android/GamepadTouchState;

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    new-instance v1, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/defjamffny/android/GamepadTouchState;->shouldHideTouch([ILjava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method private hideBars()V
    .locals 2

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 447
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :cond_1
    return-void
.end method

.method private installQuickBar()V
    .locals 3

    .line 314
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    .line 315
    new-instance v1, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda3;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 318
    new-instance v0, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda4;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    const-string v1, "ENTER"

    invoke-direct {p0, v1, v0}, Lorg/defjamffny/android/DefJamActivity;->quickButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->startButton:Landroid/widget/Button;

    .line 324
    new-instance v0, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda5;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    const-string v1, "ONLINE"

    invoke-direct {p0, v1, v0}, Lorg/defjamffny/android/DefJamActivity;->quickButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->onlineButton:Landroid/widget/Button;

    .line 325
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static intentionalPadMotion(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z
    .locals 8

    .line 114
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x6

    .line 115
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_3

    aget v5, v1, v3

    .line 118
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v6

    const/high16 v7, 0x3e800000    # 0.25f

    if-nez v6, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 120
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0x17

    const/16 v0, 0x16

    const/16 v1, 0x11

    const/16 v3, 0x12

    .line 122
    filled-new-array {v1, v3, p1, v0}, [I

    move-result-object p1

    move v0, v2

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    aget v1, p1, v0

    .line 124
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const v3, 0x3eb33333    # 0.35f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v2

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private static isPhysicalGamepad(Landroid/view/InputDevice;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x401

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1000010

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$hasGamepad$0(I)Z
    .locals 0

    .line 68
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    invoke-static {p0}, Lorg/defjamffny/android/DefJamActivity;->isPhysicalGamepad(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$installQuickBar$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 316
    :cond_0
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->layoutQuickButtons()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$installQuickBar$3()V
    .locals 4

    .line 319
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/defjamffny/android/VirtualControlsView;->releaseAll()V

    .line 320
    :cond_0
    iget-boolean v0, p0, Lorg/defjamffny/android/DefJamActivity;->startHeld:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lorg/defjamffny/android/DefJamActivity;->startHeld:Z

    const/16 v1, 0x42

    invoke-direct {p0, v1, v0}, Lorg/defjamffny/android/DefJamActivity;->sendKey(IZ)V

    .line 322
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    new-instance v1, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda8;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$installQuickBar$4()V
    .locals 3

    .line 324
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->releaseStart()V

    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/defjamffny/android/VirtualControlsView;->releaseAll()V

    :cond_0
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/defjamffny/android/OnlinePanel;->isSessionRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    invoke-virtual {p0}, Lorg/defjamffny/android/OnlinePanel;->disconnect()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    invoke-virtual {p0}, Lorg/defjamffny/android/OnlinePanel;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$openControlsEditor$5()V
    .locals 1

    const/4 v0, 0x1

    .line 369
    invoke-direct {p0, v0}, Lorg/defjamffny/android/DefJamActivity;->closeControlsEditor(Z)V

    return-void
.end method

.method private synthetic lambda$openControlsEditor$6()V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-direct {p0, v0}, Lorg/defjamffny/android/DefJamActivity;->closeControlsEditor(Z)V

    return-void
.end method

.method static synthetic lambda$quickButton$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 307
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private launchSettings()Landroid/os/Bundle;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "defjam_launch"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private layoutQuickButtons()V
    .locals 14

    .line 333
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->shortcutSettings:Lorg/defjamffny/android/MenuTouchSettings;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 334
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x2

    .line 336
    new-array v3, v2, [Landroid/widget/Button;

    iget-object v4, p0, Lorg/defjamffny/android/DefJamActivity;->startButton:Landroid/widget/Button;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/defjamffny/android/DefJamActivity;->onlineButton:Landroid/widget/Button;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    :goto_0
    if-ge v5, v2, :cond_3

    .line 338
    aget-object v4, v3, v5

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v5, 0x3

    .line 340
    iget-object v7, p0, Lorg/defjamffny/android/DefJamActivity;->shortcutSettings:Lorg/defjamffny/android/MenuTouchSettings;

    iget-object v7, v7, Lorg/defjamffny/android/MenuTouchSettings;->size:[F

    aget v7, v7, v6

    const/high16 v8, 0x42a00000    # 80.0f

    mul-float/2addr v8, v7

    .line 341
    invoke-direct {p0, v8}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v9, 0x42100000    # 36.0f

    mul-float/2addr v9, v7

    invoke-direct {p0, v9}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 342
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x33

    invoke-direct {v10, v8, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 343
    iget-object v11, p0, Lorg/defjamffny/android/DefJamActivity;->shortcutSettings:Lorg/defjamffny/android/MenuTouchSettings;

    iget-object v11, v11, Lorg/defjamffny/android/MenuTouchSettings;->x:[F

    aget v11, v11, v6

    int-to-float v12, v0

    int-to-float v8, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v8, v13

    invoke-static {v11, v12, v8}, Lorg/defjamffny/android/MenuTouchSettings;->center(FFF)F

    move-result v11

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 344
    iget-object v8, p0, Lorg/defjamffny/android/DefJamActivity;->shortcutSettings:Lorg/defjamffny/android/MenuTouchSettings;

    iget-object v8, v8, Lorg/defjamffny/android/MenuTouchSettings;->y:[F

    aget v8, v8, v6

    int-to-float v11, v1

    int-to-float v9, v9

    div-float/2addr v9, v13

    invoke-static {v8, v11, v9}, Lorg/defjamffny/android/MenuTouchSettings;->center(FFF)F

    move-result v8

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 345
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v8, 0x41300000    # 11.0f

    mul-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 346
    iget-object v7, p0, Lorg/defjamffny/android/DefJamActivity;->shortcutSettings:Lorg/defjamffny/android/MenuTouchSettings;

    iget-object v7, v7, Lorg/defjamffny/android/MenuTouchSettings;->alpha:[F

    aget v6, v7, v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setAlpha(F)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private static native nativeGetFps()F
.end method

.method private static native nativeGetGeneratedFps()F
.end method

.method private static native nativeGetInputMode()I
.end method

.method private quickButton(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 3

    .line 303
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v1, -0x1

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinimumWidth(I)V

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->fpsBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    new-instance p1, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 p2, 0x42a00000    # 80.0f

    invoke-direct {p0, p2}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result p2

    const/high16 v1, 0x42100000    # 36.0f

    invoke-direct {p0, v1}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v1

    const/16 v2, 0x33

    invoke-direct {p1, p2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 309
    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private refreshGamepadVisibility()V
    .locals 1

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    .line 72
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    return-void
.end method

.method private releaseStart()V
    .locals 2

    .line 356
    iget-boolean v0, p0, Lorg/defjamffny/android/DefJamActivity;->startHeld:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->sendKey(IZ)V

    iput-boolean v1, p0, Lorg/defjamffny/android/DefJamActivity;->startHeld:Z

    :cond_0
    return-void
.end method

.method private root()Ljava/io/File;
    .locals 2

    .line 160
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "DefJamFFNY"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/defjamffny/android/MaliFixer;->fixPath(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private sendKey(IZ)V
    .locals 9

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 352
    new-instance v8, Landroid/view/KeyEvent;

    xor-int/lit8 v5, p2, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v1, v3

    move v6, p1

    .line 353
    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 352
    invoke-virtual {p0, v8}, Lorg/defjamffny/android/DefJamActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private updateInputMode()V
    .locals 10

    .line 269
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    const/4 v0, 0x0

    .line 271
    :try_start_0
    invoke-static {}, Lorg/defjamffny/android/DefJamActivity;->nativeGetInputMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 273
    :goto_0
    iget-object v2, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/defjamffny/android/VirtualControlsView;->getLayoutMode()I

    move-result v2

    :goto_1
    invoke-static {v1, v2}, Lorg/defjamffny/android/TouchLayoutMode;->resolve(II)I

    move-result v1

    .line 274
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->hasGamepad()Z

    move-result v2

    .line 275
    iget-object v3, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/defjamffny/android/OnlinePanel;->isSessionRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v0

    .line 276
    :goto_2
    iget-object v5, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-virtual {v5}, Lorg/defjamffny/android/TouchIdleState;->hidden()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v0

    .line 277
    :goto_3
    iget v6, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    if-ne v1, v6, :cond_4

    iget-boolean v6, p0, Lorg/defjamffny/android/DefJamActivity;->appliedGamepad:Z

    if-ne v2, v6, :cond_4

    iget-boolean v6, p0, Lorg/defjamffny/android/DefJamActivity;->appliedIdleHidden:Z

    if-ne v5, v6, :cond_4

    iget-boolean v6, p0, Lorg/defjamffny/android/DefJamActivity;->appliedOnline:Z

    if-ne v3, v6, :cond_4

    return-void

    .line 278
    :cond_4
    iput v1, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    .line 279
    iput-boolean v2, p0, Lorg/defjamffny/android/DefJamActivity;->appliedGamepad:Z

    .line 280
    iput-boolean v5, p0, Lorg/defjamffny/android/DefJamActivity;->appliedIdleHidden:Z

    .line 281
    iput-boolean v3, p0, Lorg/defjamffny/android/DefJamActivity;->appliedOnline:Z

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gamepad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " touch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_6

    if-eqz v5, :cond_5

    goto :goto_4

    .line 283
    :cond_5
    const-string v7, "visible"

    goto :goto_5

    :cond_6
    :goto_4
    const-string v7, "hidden"

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 282
    const-string v7, "DefJamControls"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->releaseStart()V

    .line 285
    iget-object v6, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    const/4 v7, 0x4

    if-eqz v6, :cond_a

    .line 286
    invoke-virtual {v6}, Lorg/defjamffny/android/VirtualControlsView;->releaseAll()V

    iget-object v6, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-nez v2, :cond_8

    if-eq v1, v4, :cond_7

    goto :goto_6

    :cond_7
    move v8, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v8, v4

    :goto_7
    invoke-virtual {v6, v8}, Lorg/defjamffny/android/VirtualControlsView;->setMenuOnly(Z)V

    iget-object v6, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz v5, :cond_9

    move v8, v7

    goto :goto_8

    :cond_9
    move v8, v0

    :goto_8
    invoke-virtual {v6, v8}, Lorg/defjamffny/android/VirtualControlsView;->setVisibility(I)V

    .line 289
    :cond_a
    iget-object v6, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 290
    :cond_b
    iget-object v6, p0, Lorg/defjamffny/android/DefJamActivity;->onlineButton:Landroid/widget/Button;

    if-eqz v6, :cond_d

    .line 291
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    iget-object v6, p0, Lorg/defjamffny/android/DefJamActivity;->onlineButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    if-ne v1, v4, :cond_c

    const-string v3, "Leave online"

    invoke-static {v3}, Lorg/defjamffny/android/UiText;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_c
    const-string v3, "ONLINE"

    :goto_9
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_d
    iget-object v3, p0, Lorg/defjamffny/android/DefJamActivity;->startButton:Landroid/widget/Button;

    const/4 v6, 0x2

    const/16 v8, 0x8

    if-eqz v3, :cond_10

    if-nez v2, :cond_e

    if-nez v5, :cond_e

    if-eq v1, v6, :cond_e

    move v9, v0

    goto :goto_a

    :cond_e
    move v9, v8

    .line 295
    :goto_a
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    iget-object v3, p0, Lorg/defjamffny/android/DefJamActivity;->startButton:Landroid/widget/Button;

    if-ne v1, v4, :cond_f

    const-string v4, "START"

    goto :goto_b

    :cond_f
    const-string v4, "ENTER"

    :goto_b
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_10
    iget-object v3, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lorg/defjamffny/android/XboxMenuControlsView;->releaseAll()V

    iget-object v3, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    if-nez v2, :cond_12

    if-nez v1, :cond_12

    if-eqz v5, :cond_11

    move v4, v7

    goto :goto_c

    :cond_11
    move v4, v0

    goto :goto_c

    :cond_12
    move v4, v8

    :goto_c
    invoke-virtual {v3, v4}, Lorg/defjamffny/android/XboxMenuControlsView;->setVisibility(I)V

    .line 299
    :cond_13
    iget-object v3, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    invoke-virtual {v3}, Lorg/defjamffny/android/PortTouchView;->releaseTouch()V

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    if-nez v2, :cond_14

    if-ne v1, v6, :cond_14

    if-eqz v5, :cond_15

    move v0, v7

    goto :goto_d

    :cond_14
    move v0, v8

    :cond_15
    :goto_d
    invoke-virtual {p0, v0}, Lorg/defjamffny/android/PortTouchView;->setVisibility(I)V

    :cond_16
    :goto_e
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lorg/defjamffny/android/DefJamActivity;->isPhysicalGamepad(Landroid/view/InputDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lorg/defjamffny/android/DefJamActivity;->intentionalPadMotion(Landroid/view/MotionEvent;Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->padTouch:Lorg/defjamffny/android/GamepadTouchState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/defjamffny/android/GamepadTouchState;->useGamepad(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lorg/defjamffny/android/DefJamActivity;->isPhysicalGamepad(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 97
    invoke-static {v0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->padTouch:Lorg/defjamffny/android/GamepadTouchState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/defjamffny/android/GamepadTouchState;->useGamepad(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    .line 103
    :cond_2
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v0, 0x1002

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    move v2, v3

    :cond_1
    sub-int v2, v4, v2

    .line 80
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-virtual {v1}, Lorg/defjamffny/android/TouchIdleState;->hidden()Z

    move-result v1

    .line 81
    iget-object v3, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lorg/defjamffny/android/TouchIdleState;->touch(JI)V

    if-eqz v1, :cond_3

    .line 82
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    .line 84
    :cond_3
    iget-boolean v1, p0, Lorg/defjamffny/android/DefJamActivity;->appliedGamepad:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_4

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->padTouch:Lorg/defjamffny/android/GamepadTouchState;

    invoke-virtual {v0}, Lorg/defjamffny/android/GamepadTouchState;->requestTouch()V

    .line 87
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->refreshGamepadVisibility()V

    .line 90
    :cond_4
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected getArguments()[Ljava/lang/String;
    .locals 6

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--root="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->root()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "--no-launcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "--guest-cores=1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "--native-cores=0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v1, "--native-layout=split"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v1, "fxaa"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/defjamffny/android/DefJamActivity;->configuredBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v3, "--fxaa="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "--vk-async=0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v1, "--vertex-threads=1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v1, "fps_limit"

    const/16 v3, 0x3c

    invoke-direct {p0, v1, v3}, Lorg/defjamffny/android/DefJamActivity;->configuredInt(Ljava/lang/String;I)I

    move-result v1

    .line 211
    const-string v4, "--framegen=0"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--fps-limit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1e

    if-ne v1, v5, :cond_1

    move v3, v5

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v1, "driver_library"

    const-string v3, ""

    invoke-direct {p0, v1, v3}, Lorg/defjamffny/android/DefJamActivity;->configuredString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "gpu_driver/current"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    const-string v4, "use_custom_driver"

    invoke-direct {p0, v4, v2}, Lorg/defjamffny/android/DefJamActivity;->configuredBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--driver-dir="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--driver-lib="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--hook-dir="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getLibraries()[Ljava/lang/String;
    .locals 2

    const/4 p0, 0x2

    .line 171
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "SDL3"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "main"

    aput-object v1, p0, v0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/defjamffny/android/DefJamActivity;->closeControlsEditor(Z)V

    return-void

    .line 394
    :cond_0
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 229
    const-string v0, "ui_language"

    const-string v1, "en"

    invoke-direct {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->configuredString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/defjamffny/android/UiText;->setLanguage(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->forceLandscape()V

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->root()Ljava/io/File;

    move-result-object v1

    const-string v2, "game"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {p0}, Lorg/defjamffny/android/CrashReporter;->install(Landroid/content/Context;)V

    invoke-static {p0}, Lorg/defjamffny/android/AutoSetup;->ensureGameFiles(Landroid/app/Activity;)Z

    :try_start_env
    const-string v0, "RECOMP_SKIP_INTRO"

    const-string v1, "0"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_env
    .catch Ljava/lang/Throwable; {:try_start_env .. :try_end_env} :catch_env

    :catch_env
    .line 232
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    .line 234
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->forceLandscape()V

    .line 236
    const-string p1, "show_fps"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/defjamffny/android/DefJamActivity;->configuredBool(Ljava/lang/String;Z)Z

    move-result p1

    .line 238
    new-instance v1, Lorg/defjamffny/android/VirtualControlsView;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/VirtualControlsView;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    .line 239
    invoke-virtual {v1, v0}, Lorg/defjamffny/android/VirtualControlsView;->setMenuOnly(Z)V

    .line 240
    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v1, Lorg/defjamffny/android/XboxMenuControlsView;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/XboxMenuControlsView;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    .line 242
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v1, Lorg/defjamffny/android/PortTouchView;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/PortTouchView;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    const/16 v2, 0x8

    .line 245
    invoke-virtual {v1, v2}, Lorg/defjamffny/android/PortTouchView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/defjamffny/android/VirtualControlsView;->bringToFront()V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 251
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    const-string v2, "-- FPS"

    invoke-static {v2}, Lorg/defjamffny/android/UiText;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 253
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-direct {p0, v0}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v3}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v0}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v0

    invoke-direct {p0, v3}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v3

    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 254
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->fpsBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x35

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 256
    invoke-direct {p0, v0}, Lorg/defjamffny/android/DefJamActivity;->dp(F)I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->fpsUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_1
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->installQuickBar()V

    .line 259
    new-instance p1, Lorg/defjamffny/android/OnlinePanel;

    invoke-direct {p1, p0}, Lorg/defjamffny/android/OnlinePanel;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    iput-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    .line 260
    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "open_online"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    invoke-virtual {p1}, Lorg/defjamffny/android/OnlinePanel;->showWhenReady()V

    .line 261
    :cond_2
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->applyStartStyle()V

    .line 262
    const-string p1, "input"

    invoke-virtual {p0, p1}, Lorg/defjamffny/android/DefJamActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->inputManager:Landroid/hardware/input/InputManager;

    if-eqz p1, :cond_3

    .line 263
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->padListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 264
    :cond_3
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    .line 265
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->inputUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 417
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/defjamffny/android/OnlinePanel;->destroy()V

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->inputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->padListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    .line 420
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/defjamffny/android/VirtualControlsView;->releaseAll()V

    .line 421
    :cond_2
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onDestroy()V

    .line 424
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 406
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    .line 407
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->online:Lorg/defjamffny/android/OnlinePanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/defjamffny/android/OnlinePanel;->suspend()V

    .line 408
    :cond_0
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->releaseStart()V

    const/16 v0, 0x83

    const/4 v1, 0x0

    .line 409
    invoke-direct {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->sendKey(IZ)V

    .line 410
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/defjamffny/android/VirtualControlsView;->releaseAll()V

    .line 411
    :cond_1
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/defjamffny/android/PortTouchView;->releaseTouch()V

    .line 412
    :cond_2
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/defjamffny/android/XboxMenuControlsView;->releaseAll()V

    .line 413
    :cond_3
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 398
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onResume()V

    .line 399
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    .line 400
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->refreshGamepadVisibility()V

    .line 401
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->forceLandscape()V

    .line 402
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->hudHandler:Landroid/os/Handler;

    new-instance v1, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda1;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 428
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->hideBars()V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    .line 432
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->releaseStart()V

    .line 433
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/defjamffny/android/XboxMenuControlsView;->releaseAll()V

    .line 434
    :cond_1
    iget-object p1, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/defjamffny/android/VirtualControlsView;->releaseAll()V

    .line 435
    :cond_2
    iget-object p0, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/defjamffny/android/PortTouchView;->releaseTouch()V

    :cond_3
    :goto_0
    return-void
.end method

.method public openControlsEditor()V
    .locals 3

    .line 361
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/defjamffny/android/DefJamActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    .line 363
    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->releaseStart()V

    .line 364
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/defjamffny/android/VirtualControlsView;->releaseAll()V

    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->controls:Lorg/defjamffny/android/VirtualControlsView;

    invoke-virtual {v0, v1}, Lorg/defjamffny/android/VirtualControlsView;->setVisibility(I)V

    .line 365
    :cond_1
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/defjamffny/android/PortTouchView;->releaseTouch()V

    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->portTouch:Lorg/defjamffny/android/PortTouchView;

    invoke-virtual {v0, v1}, Lorg/defjamffny/android/PortTouchView;->setVisibility(I)V

    .line 366
    :cond_2
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/defjamffny/android/XboxMenuControlsView;->releaseAll()V

    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->menuControls:Lorg/defjamffny/android/XboxMenuControlsView;

    invoke-virtual {v0, v1}, Lorg/defjamffny/android/XboxMenuControlsView;->setVisibility(I)V

    .line 367
    :cond_3
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->quickBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->fpsView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :cond_4
    new-instance v0, Lorg/defjamffny/android/ControlsEditorPanel;

    new-instance v1, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda6;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    new-instance v2, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/defjamffny/android/DefJamActivity$$ExternalSyntheticLambda7;-><init>(Lorg/defjamffny/android/DefJamActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lorg/defjamffny/android/ControlsEditorPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->editor:Lorg/defjamffny/android/ControlsEditorPanel;

    .line 370
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/defjamffny/android/DefJamActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_0
    return-void
.end method

.method restoreAfterOnline()V
    .locals 3

    .line 358
    iget-object v0, p0, Lorg/defjamffny/android/DefJamActivity;->touchIdle:Lorg/defjamffny/android/TouchIdleState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/defjamffny/android/TouchIdleState;->reset(J)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/defjamffny/android/DefJamActivity;->appliedInputMode:I

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->updateInputMode()V

    invoke-direct {p0}, Lorg/defjamffny/android/DefJamActivity;->hideBars()V

    return-void
.end method
