.class Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatbotAgreementObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 590
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 591
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 592
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 596
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 597
    const-string v0, "RegiObsMgr"

    const-string v1, "ChatbotAgreementObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-eqz p2, :cond_1

    .line 599
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 600
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 601
    .local v1, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    .line 602
    return-void

    .line 604
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 605
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyChatbotAgreementChanged(I)V

    .line 609
    .end local v0    # "phoneId":I
    .end local v1    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    return-void
.end method
