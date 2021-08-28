.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.source "ImsEmergencySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;
    }
.end annotation


# static fields
.field private static final CAN_INVITE_TILL_180RINGING_ECALL_FAIL_TIMER:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "ImsEmergencySession"

.field private static final TMO_EUR_INVITE_TILL_18X_ECALL_FAIL_TIMER:I = 0xa

.field private static final TMO_EUR_T_REG_ECALL_FAIL_TIMER:I = 0x6

.field private static final TMO_US_INVITE_TILL_18X_ECALL_FAIL_TIMER:I = 0x19


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "module"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1159
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .line 1160
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->setPhoneId(I)V

    .line 1161
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getIMSRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->hasInProgressEmergencyTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyUa()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->needRemoveTimerOn18X()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;
    .param p1, "x1"    # I

    .line 51
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->isNoNextPcscf(I)Z

    move-result v0

    return v0
.end method

.method private getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 10

    .line 1079
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_6

    .line 1080
    const/4 v0, 0x0

    .line 1082
    .local v0, "imsPdnSupport":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1083
    .local v1, "emergencyProfile":Lcom/sec/ims/settings/ImsProfile;
    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1084
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v0, v4

    .line 1087
    :cond_1
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 1088
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v3, v6, :cond_6

    aget-object v7, v5, v3

    .line 1089
    .local v7, "r":Lcom/sec/ims/ImsRegistration;
    iget v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-virtual {v7}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 1090
    goto :goto_2

    .line 1093
    :cond_2
    invoke-virtual {v7}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v0, :cond_4

    .line 1094
    invoke-virtual {v7}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v8

    if-ne v8, v2, :cond_4

    sget-object v8, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_3

    sget-object v8, Lcom/sec/internal/constants/Mno;->H3G_DK:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_3

    sget-object v8, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    if-ne v4, v8, :cond_4

    :cond_3
    goto :goto_3

    .line 1088
    .end local v7    # "r":Lcom/sec/ims/ImsRegistration;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1096
    .restart local v7    # "r":Lcom/sec/ims/ImsRegistration;
    :cond_5
    :goto_3
    return-object v7

    .line 1100
    .end local v0    # "imsPdnSupport":Z
    .end local v1    # "emergencyProfile":Lcom/sec/ims/settings/ImsProfile;
    .end local v4    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v7    # "r":Lcom/sec/ims/ImsRegistration;
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEmergencyUa()Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 3

    .line 1195
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1197
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v0, :cond_0

    .line 1198
    const/16 v1, 0xf

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    return-object v1

    .line 1201
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIMSRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    .line 1106
    .local v0, "r":Lcom/sec/ims/ImsRegistration;
    return-object v0

    .line 1109
    .end local v0    # "r":Lcom/sec/ims/ImsRegistration;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasInProgressEmergencyTask()Z
    .locals 4

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    .line 1225
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    .line 1226
    .local v0, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v0, :cond_0

    .line 1227
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    .line 1228
    .local v1, "eRegiState":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emergency Task status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsEmergencySession"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_0

    .line 1230
    const/4 v2, 0x1

    return v2

    .line 1234
    .end local v0    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v1    # "eRegiState":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNoNextPcscf(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1209
    const/4 v0, 0x0

    .line 1211
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    .line 1213
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    .line 1214
    .local v1, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v1, :cond_0

    .line 1215
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNoNextPcscf()Z

    move-result v0

    .line 1218
    .end local v1    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMO_E911 isNoNextPcscf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsEmergencySession"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return v0
.end method

.method private needRemoveTimerOn18X()Z
    .locals 6

    .line 1238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE_NETHERLAND:Lcom/sec/internal/constants/Mno;

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    return v4

    .line 1239
    :cond_1
    :goto_0
    const-string v0, "ImsEmergencySession"

    const-string v2, "VZW/KOR/TEL_NO/TEN_NO/VF_NL want E911 Timer removed if 180 / 183 received"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return v1
.end method


# virtual methods
.method protected getLte911Fail()I
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mContext:Landroid/content/Context;

    .line 61
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getPhoneId()I

    move-result v2

    .line 60
    const-string v3, "omadm/./3GPP_IMS/T_LTE_911_FAIL"

    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getLte911FailFromGlobalSettings()I
    .locals 3

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getPhoneId()I

    move-result v0

    const-string/jumbo v1, "t_lte_911_fail"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 70
    return v0
.end method

.method protected getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .locals 10

    .line 1114
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1115
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1117
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1118
    .local v2, "regInfo":Lcom/sec/ims/ImsRegistration;
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getIMSRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 1120
    .local v3, "IMSRegInfo":Lcom/sec/ims/ImsRegistration;
    const-string v4, "ImsEmergencySession"

    if-nez v2, :cond_4

    .line 1121
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    if-ne v1, v5, :cond_2

    .line 1122
    const-string v5, "getOriginatingUri: emergency call without registration."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    :goto_1
    return-object v6

    .line 1124
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 1125
    const-string v5, "getOriginatingUri: emergency call without SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-string/jumbo v4, "sip:anonymous@anonymous.invalid"

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    return-object v4

    .line 1129
    :cond_3
    const-string v5, "getOriginatingUri: No emergency registration. Use IMEI-based preferred-ID"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-object v6

    .line 1138
    :cond_4
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 1139
    .local v5, "ou":Lcom/sec/ims/util/ImsUri;
    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_7

    .line 1140
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1141
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/util/NameAddr;

    .line 1142
    .local v7, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v7}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v8

    sget-object v9, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v8, v9}, Lcom/sec/ims/util/ImsUri$UriType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1143
    const-string v6, "getOriginatingUri: Found Tel-URI"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {v7}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 1145
    .end local v5    # "ou":Lcom/sec/ims/util/ImsUri;
    .local v4, "ou":Lcom/sec/ims/util/ImsUri;
    move-object v5, v4

    goto :goto_3

    .line 1147
    .end local v4    # "ou":Lcom/sec/ims/util/ImsUri;
    .end local v7    # "addr":Lcom/sec/ims/util/NameAddr;
    .restart local v5    # "ou":Lcom/sec/ims/util/ImsUri;
    :cond_5
    goto :goto_2

    :cond_6
    :goto_3
    goto :goto_4

    .line 1150
    :cond_7
    const-string v6, "getOriginatingUri: emergency call with registration."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 1154
    :cond_8
    :goto_4
    return-object v5
.end method

.method public getRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 1075
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method protected getWlan911Fail()I
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mContext:Landroid/content/Context;

    .line 66
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getPhoneId()I

    move-result v2

    .line 65
    const-string v3, "omadm/./3GPP_IMS/TWLAN_911_CALLFAIL_TIMER"

    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 18
    .param p1, "stackIf"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p2, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1165
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iput-object v14, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 1166
    move-object/from16 v15, p2

    iput-object v15, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1168
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->refreshAuEmergencyProfile(I)V

    .line 1170
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1174
    .local v0, "emergencyProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_1

    .line 1175
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 1179
    .end local v0    # "emergencyProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    :goto_0
    new-instance v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v5, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v6, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v8, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v9, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v10, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v11, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mLooper:Landroid/os/Looper;

    const-string v16, "EmergencyCallStateMachine"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p0

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object v14, v12

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v14, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1181
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->init()V

    .line 1182
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0, v13}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1184
    const-string v0, "ImsEmergencySession"

    const-string/jumbo v1, "start EmergencyCallStateMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->start()V

    .line 1186
    new-instance v11, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v2, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v8, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v9, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v10, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;)V

    iput-object v11, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 1188
    new-instance v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    iget-object v2, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v8, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 1190
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->setIsNrSaMode()V

    .line 1192
    return-void
.end method

.method protected isEmergencyAvailable(Lcom/sec/internal/constants/Mno;)Z
    .locals 7
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 75
    const/4 v0, 0x1

    .line 76
    .local v0, "isEmergencyAvailable":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 77
    .local v1, "emergencyProfile":Lcom/sec/ims/settings/ImsProfile;
    const/16 v2, 0xd

    .line 79
    .local v2, "currentNetworkType":I
    const-string v3, "ImsEmergencySession"

    if-eqz v1, :cond_1

    .line 80
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VoWIFI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const/16 v4, 0x12

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v2, v4

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networktype : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCommercializedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    const-string v4, "mmtel"

    invoke-virtual {v1, v4, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    const/4 v0, 0x0

    .line 86
    const-string v4, "emergency service unavailable in current RAT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 93
    :cond_2
    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {v4}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 98
    const-string v4, "if VoPS is not supported, do CSFB"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 103
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_4

    .line 104
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isEmergencyCallProhibited(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 105
    const-string v4, "if DCM get 503 error in regi, do CSFB"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    .line 110
    :cond_4
    return v0
.end method

.method protected setPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 1205
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mPhoneId:I

    .line 1206
    return-void
.end method
