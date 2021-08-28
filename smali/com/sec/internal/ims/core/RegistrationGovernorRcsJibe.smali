.class public Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorRcsJibe.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnRcs"


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 0
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected addIpv4Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 4
    .param p3, "lp"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    .local p1, "pcscfs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "validPcscfIp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 66
    .local v0, "hasipv4address":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "pcscf":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_1

    .line 71
    .end local v2    # "pcscf":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    const-string v1, "RegiGvnRcs"

    if-eqz v0, :cond_5

    .line 74
    const-string v2, "ipv4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string v2, "Don\'t use ipv6 addr for RCS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 80
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .restart local v2    # "pcscf":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "pcscf":Ljava/lang/String;
    :cond_3
    goto :goto_2

    :cond_4
    goto :goto_3

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    const-string v2, "Ipv4 pcscf addr isn\'t exist for RCS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 93
    :cond_6
    :goto_3
    return-object p2
.end method

.method protected checkCallStatus()Z
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "RegiGvnRcs"

    const-string v1, "isReadyToRegister: TelephonyCallStatus is not idle (CS call)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v4

    .line 117
    :cond_0
    return v1
.end method

.method protected checkRcsEvent(I)Z
    .locals 8
    .param p1, "rat"    # I

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 123
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string/jumbo v1, "rcs_pre_consent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "rcsPreConsent":I
    const-string v1, "RegiGvnRcs"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 130
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    const-string/jumbo v6, "version"

    invoke-static {v6, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 129
    invoke-static {v4, v5, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 131
    .local v4, "configVersion":I
    if-gtz v4, :cond_1

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 132
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v7

    .line 131
    invoke-static {v5, v6, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 133
    const-string v3, "isReadyToRegister: User don\'t try RCS service yet"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v2

    .line 138
    .end local v4    # "configVersion":I
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 139
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    .line 138
    const-string v6, "defaultmsgappinuse"

    invoke-static {v4, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 140
    const-string v3, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v2

    .line 143
    :cond_2
    return v3
.end method

.method protected checkRoamingStatus(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 148
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->allowRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "RegiGvnRcs"

    const-string v1, "isReadyToRegister: IMS roaming is not allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 152
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 3
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 48
    .local v0, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v1, 0x12

    if-eq p2, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string v1, "RegiGvnRcs"

    const-string v2, "filterService: Mobile data OFF!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 54
    :cond_0
    return-object v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 160
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->checkRcsEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSipError: service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnRcs"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mIsValid:Z

    const-string v4, "SIP ERROR[IM] : FORBIDDEN. DeRegister.."

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 105
    :cond_1
    return-object p2
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 9
    .param p1, "callState"    # I

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 166
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTelephonyCallStatusChanged: callState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnRcs"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 173
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v3, 0x12

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 174
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v3, :cond_2

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    const-string v1, "CS call. Don\'t Trigger deregister for Google RCS"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    const-string v1, "CS call. Trigger deregister for RCS"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 180
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRcsJibe;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "CS call. Trigger deregister for RCS"

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 184
    :cond_2
    :goto_0
    return-void
.end method
