.class Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;
.super Ljava/lang/Object;
.source "ResipRegistrationManager.java"

# interfaces
.implements Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

.field final synthetic val$phoneId:I

.field final synthetic val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

.field final synthetic val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    .line 843
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUpdatePani$0$ResipRegistrationManager$2(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 3
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 959
    const-string v0, "ResipRegiMgr"

    const-string v1, "Sync CellInfo with RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellLocation(IZ)Landroid/telephony/CellLocation;

    .line 962
    return-void
.end method

.method public onContactActivated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .locals 3
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "handle"    # I

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContactActivated: handle-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyContactActivated(II)V

    .line 975
    return-void
.end method

.method public onCreated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 8
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 847
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    if-gez v0, :cond_2

    .line 848
    :cond_0
    const v0, 0x11020003

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",UA FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v2, ":null"

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 851
    :cond_2
    const/4 v0, 0x0

    const-string v1, "UACreateFailed"

    const-string v2, "ResipRegiMgr"

    if-nez p1, :cond_3

    .line 852
    const-string v3, "failed to create UA. restart imsService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 854
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 855
    return-void

    .line 858
    :cond_3
    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    if-gez v3, :cond_4

    .line 859
    const-string v3, "onCreated: Invalid phoneId"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 861
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 862
    return-void

    .line 865
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreated: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 867
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 869
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    .line 870
    .local v1, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 871
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 872
    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    const-string/jumbo v4, "updating geolocation for UA Creation"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 873
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    .line 876
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 877
    .local v3, "pani":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 878
    iget v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    const-string v5, "onCreated: pani is null"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 879
    return-void

    .line 881
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 882
    const-string v4, ""

    .line 883
    .local v4, "lastPani":Ljava/lang/String;
    const-string v5, "IEEE-802.11"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 884
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 885
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 886
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    .line 889
    :cond_7
    invoke-virtual {p1, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updatePani(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-interface {v5, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPaniSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .end local v4    # "lastPani":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 894
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 896
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyEmergencyReady(I)V

    .line 897
    return-void

    .line 900
    :cond_9
    const-string/jumbo v4, "trigger registration."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->register()I

    .line 903
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateCallwaitingStatus()V

    .line 904
    return-void
.end method

.method public onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ZLcom/sec/ims/util/SipError;I)V
    .locals 3
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "isRequestedDeregi"    # Z
    .param p3, "error"    # Lcom/sec/ims/util/SipError;
    .param p4, "retryAfter"    # I

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRequestedDeregi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 924
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 925
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 926
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    const-string v1, "isRequestedDeregi"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 928
    const-string/jumbo v1, "retryAfter"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 929
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyDeRegistered(Landroid/os/Bundle;)V

    .line 930
    return-void
.end method

.method public onRefreshRegNotification(I)V
    .locals 2
    .param p1, "mHandle"    # I

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefreshRegNotification : handle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRefreshRegNotification(I)V

    .line 969
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;)V
    .locals 3
    .param p1, "handle"    # I
    .param p3, "isRegi"    # I
    .param p4, "contactUriType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 980
    .local p2, "contactUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegEventContactUriNotification: handle-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 982
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "contact_uri_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 985
    const-string v1, "isRegi"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 986
    const-string v1, "contactUriType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRegEventContactUriNotification(Landroid/os/Bundle;)V

    .line 988
    return-void
.end method

.method public onRegistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 4
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistered: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 911
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    if-nez v0, :cond_0

    .line 913
    return-void

    .line 916
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRegistered(IILcom/sec/ims/ImsRegistration;)V

    .line 917
    return-void
.end method

.method public onRegistrationError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;I)V
    .locals 3
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "retryAfter"    # I

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 937
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 938
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 939
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    const-string v2, "handle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 940
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 941
    const-string/jumbo v1, "retryAfter"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 942
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRegistrationError(Landroid/os/Bundle;)V

    .line 943
    return-void
.end method

.method public onSubscribeError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V
    .locals 3
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSubscribeError: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 950
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 951
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 952
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 953
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifySubscribeError(Landroid/os/Bundle;)V

    .line 954
    return-void
.end method

.method public onUpdatePani(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 958
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$2$BZYV7fwgX5HySavS7yuaUyEB_5M;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$2$BZYV7fwgX5HySavS7yuaUyEB_5M;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 962
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 963
    return-void
.end method
