.class Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 484
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 485
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 486
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 490
    const-string v0, "RegiObsMgr"

    const-string v1, "ImsServiceSwitch updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz p2, :cond_0

    .line 492
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 493
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyImsSettingUpdated(I)V

    .line 495
    .end local v0    # "phoneId":I
    :cond_0
    return-void
.end method
