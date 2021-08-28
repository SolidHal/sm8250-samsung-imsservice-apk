.class public Lcom/sec/internal/ims/core/RegistrationGovernorVzw;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorVzw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;
    }
.end annotation


# static fields
.field protected static final DEFAULT_RETRY_AFTER:I = 0x1e

.field protected static final DEFAULT_TIMS_TIMER:I = 0x78

.field protected static final DELAY_FOR_CDMALESS_MODEL:I = 0x6

.field private static final DELAY_FOR_CDMA_HANDOVER:I = 0x3

.field protected static final INTENT_ACTION_TRIGGER_OMADM_TREE_SYNC:Ljava/lang/String; = "com.samsung.sdm.START_DM_SYNC_SESSION"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnVzw"


# instance fields
.field protected mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

.field protected mDmLastEabEnabled:Z

.field protected mDmLastLvcEnabled:Z

.field protected mDmLastVceEnabled:Z

.field protected mDmLastVolteEnabled:Z

.field protected mDmTimsTimer:I

.field protected mDmVolteNodeUpdated:Z

.field protected mHasPendingDeregistration:Z

.field protected mHasPendingOmadmUpdate:Z

.field protected mHasPendingReregistration:Z

.field protected mIsInviteForbidden:Z

.field protected mOverrideEpdgCellularPref:Z

.field protected final mRegRetryTime:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 87
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    .line 92
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsInviteForbidden:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    .line 94
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 96
    const/16 v0, 0x78

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    .line 97
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    .line 100
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegRetryTime:[I

    .line 137
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    .line 138
    return-void

    :array_0
    .array-data 4
        0x0
        0x1e
        0x1e
        0x3c
        0x78
        0x1e0
        0x384
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 7
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 142
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 87
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    .line 92
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsInviteForbidden:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    .line 94
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 96
    const/16 v1, 0x78

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    .line 97
    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    .line 100
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegRetryTime:[I

    .line 144
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v3, "mmtel"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    .line 145
    const-string v2, "RegiGvnVzw"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LRA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v3, "Turn off SMS_OVER_IP based on VOLTE_ENABLED"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    const v1, 0x100a0001

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",OFF:SMS_OVER_IP"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v1, v0, v3}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v5, "mmtel-video"

    invoke-static {v1, v5, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string/jumbo v5, "presence"

    invoke-static {v1, v5, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    .line 154
    invoke-direct {p0, p7}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readVCEConfigValue(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    .line 156
    invoke-direct {p0, p7}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readDmTimsTimer(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegistrationGovernorVzw: mDmLastVceEnabled["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 161
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eqz v1, :cond_1

    .line 162
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 164
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 171
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "gid1":Ljava/lang/String;
    const-string v2, "BAE1000000000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    :try_start_1
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {p7, v0, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 175
    const v0, 0x100a0002

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",FKR VLT ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    goto :goto_2

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 183
    const/high16 v0, 0x100a0000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_3

    :cond_3
    move-object v4, v6

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    if-eqz v4, :cond_4

    move-object v4, v5

    goto :goto_4

    :cond_4
    move-object v4, v6

    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-eqz v4, :cond_5

    move-object v4, v5

    goto :goto_5

    :cond_5
    move-object v4, v6

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    move-object v5, v6

    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 185
    return-void

    :array_0
    .array-data 4
        0x0
        0x1e
        0x1e
        0x3c
        0x78
        0x1e0
        0x384
    .end array-data
.end method

.method private applySSACPolicy(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1111
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 1115
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSsacEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCsfbSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1121
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v1, "RegiGvnVzw"

    const-string v2, "applySSACPolicy: CSFB is not available. Discard PLMN."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 1123
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isSVLTEDevice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1124
    const-string v0, "mmtel-video"

    const-string v1, "by SSAC"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v0, "mmtel"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_SSAC_BARRING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1129
    :cond_2
    return-object p1
.end method

.method private isCallTypeVideo(I)Z
    .locals 1
    .param p1, "callType"    # I

    .line 490
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSVLTEDevice()Z
    .locals 3

    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, "isSVLTEDevice":Z
    const-string/jumbo v1, "ro.ril.svlte1x"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, "property":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1148
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1151
    :cond_0
    return v0
.end method

.method private isVoiceOverWifiEnabled()Z
    .locals 5

    .line 735
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 736
    .local v0, "isVowifiEnabled":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 737
    .local v1, "isRoaming":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 738
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/sec/internal/constants/ims/VowifiConfig;->getRoamPrefMode(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v3

    :cond_0
    move v0, v4

    .line 740
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoWiFi pref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiGvnVzw"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 741
    return v0
.end method

.method private isVoiceOverWifiPreferred()Z
    .locals 4

    .line 745
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isVoiceOverWifiEnabled()Z

    move-result v0

    .line 746
    .local v0, "isVowifiPreferred":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isCdmaAvailableForVoice(I)Z

    move-result v1

    .line 747
    .local v1, "isCdmaAvailable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceOverWifiPreferred: isVowifiPreferred ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] isCdmaAvailableForVoice : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnVzw"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    return v0

    .line 751
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private needReRegiOnCallStatusChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;I)Z
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "event"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .param p3, "callType"    # I

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    .line 504
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v4, "needReRegiOnCallStatusChanged, re-regi case"

    const-string v5, "RegiGvnVzw"

    if-ne p2, v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 508
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isCallTypeVideo(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->getVoiceTechType(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    const-string v0, "needReRegiOnCallStatusChanged, VOWIFI or VoLTE disabled case, no re-regi"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return v3

    .line 511
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 512
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v2

    .line 519
    :cond_2
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, v0, :cond_b

    .line 520
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    if-eqz v0, :cond_b

    .line 521
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_7

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    .line 526
    .local v0, "epdgMgr":Lcom/sec/epdg/EpdgManager;
    if-eqz v0, :cond_5

    .line 527
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEnd()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 528
    const-string v1, "W2L indication from EpdgManager will be coming."

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v3

    .line 532
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v6

    if-ne v6, v1, :cond_6

    .line 533
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isVoiceOverWifiPreferred()Z

    move-result v1

    if-nez v1, :cond_4

    .line 534
    const-string/jumbo v1, "re-regi case"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v2

    .line 537
    :cond_4
    const-string v1, "VoWiFi pref. re-regi not required"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return v3

    .line 542
    :cond_5
    const-string v1, "Can not find epdgManager"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v0    # "epdgMgr":Lcom/sec/epdg/EpdgManager;
    :cond_6
    goto :goto_1

    .line 545
    :cond_7
    const-string v0, "VolteServiceModule is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 549
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v0, v1, :cond_8

    .line 550
    const-string v0, "needReRegiOnCallStatusChanged, LTE HO case no need for re-regi"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v3

    .line 553
    :cond_8
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v2

    .line 562
    :cond_9
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, v0, :cond_a

    .line 563
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    goto :goto_2

    .line 564
    :cond_a
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, v0, :cond_b

    .line 565
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 568
    :cond_b
    :goto_2
    return v3
.end method

.method private onSipError_MmtelVoice(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 10
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 608
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    .line 609
    .local v0, "isCDMALessEnabled":Z
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_ORIG_USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2b

    if-nez v1, :cond_d

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_ORIG_USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 613
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_USER_NOT_AUTHORIZED_FOR_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 617
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v1

    const-string v2, "Volte service will be disable for 403 Forbidden"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->setInvite403DisableService(ZI)V

    .line 619
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sdm.START_DM_SYNC_SESSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.sdm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 622
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 623
    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    :cond_1
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 625
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasVoLteCall:Z

    if-nez v1, :cond_3

    .line 626
    const/4 v1, 0x3

    .line 627
    .local v1, "delay":I
    if-eqz v0, :cond_2

    .line 630
    const/4 v1, 0x0

    .line 634
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v4, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 635
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 636
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v7, v2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    mul-int/lit16 v8, v1, 0x3e8

    const-string v9, "503 Service Unavailable: IMS Outage for voice service"

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 638
    new-instance v2, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x9c6

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    move-object p2, v2

    .line 639
    .end local v1    # "delay":I
    goto/16 :goto_3

    .line 643
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 644
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 645
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 646
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 650
    :cond_4
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    goto/16 :goto_3

    .line 652
    :cond_5
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isTimerVzwExpiredError(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x6a6

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    if-eq v1, v4, :cond_c

    const/16 v1, 0x9cb

    .line 653
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    if-ne v1, v4, :cond_6

    goto :goto_1

    .line 658
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 669
    :cond_7
    if-eqz v0, :cond_8

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->PRECONDITION_FAILURE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 671
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 672
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v6, v1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const/16 v7, 0x1770

    const-string v8, "VoLTE call setup failure"

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    goto :goto_3

    .line 674
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v1

    return-object v1

    .line 661
    :cond_9
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasVoLteCall:Z

    if-eqz v1, :cond_b

    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 662
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 663
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    goto :goto_3

    .line 667
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeCurrentPcscfAndInitialRegister(Z)V

    goto :goto_3

    .line 656
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 657
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v4, "vzw timer expired"

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_3

    .line 611
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 612
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "403 Forbidden"

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 676
    :goto_3
    return-object p2
.end method

.method private readDmTimsTimer(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "omadm/./3GPP_IMS/VZW_TIMS_TIMER"

    invoke-static {p1, v1, v0}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private readVCEConfigValue(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v2, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/os/ImsCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "mdmnType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSC MDMN type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEP"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "VCE_CONFIG"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1
.end method

.method private setRadioPower(Z)V
    .locals 2
    .param p1, "turnOn"    # Z

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRadioPower ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->setRadioPower(Z)V

    .line 1142
    return-void
.end method


# virtual methods
.method protected applyCsfbSupported(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1133
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "mmtel"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCsfbSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 1136
    :cond_0
    return-object p1
.end method

.method protected applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;
    .locals 4
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

    .line 1182
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 1189
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    const/16 v1, 0x12

    const-string v2, "mmtel"

    if-nez v0, :cond_1

    if-eq p2, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    .line 1190
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->getVoiceTechType(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    const-string v0, "by voice type cs"

    invoke-virtual {p0, p1, v2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1196
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1197
    const-string v0, "mmtel-video"

    const-string v3, "by no mmtel"

    invoke-virtual {p0, p1, v0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isVoWiFiSupported(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v1, :cond_5

    .line 1201
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isVoiceOverWifiPreferred()Z

    move-result v0

    .line 1202
    .local v0, "isVowifiPreferred":Z
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    if-nez v1, :cond_5

    .line 1203
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v1, v3}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1204
    const-string v1, "by VoWiFi settings"

    invoke-virtual {p0, p1, v2, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1213
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    .line 1214
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v3, :cond_5

    :cond_4
    if-nez v0, :cond_5

    .line 1215
    const-string v1, "by VowifiPreferred"

    invoke-virtual {p0, p1, v2, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1221
    .end local v0    # "isVowifiPreferred":Z
    :cond_5
    return-object p1
.end method

.method protected applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 418
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_2

    .line 423
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 424
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    const-string v0, "RegiGvnVzw"

    const-string v1, "CDMALess and VoPS not Supported. Disable VZW LTE PLMN."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 428
    :cond_1
    const-string v0, "mmtel-video"

    const-string v1, "VoPS Off"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "mmtel"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 433
    :cond_2
    return-object p1
.end method

.method protected checkCallStatus()Z
    .locals 6

    .line 210
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isSVLTEDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v3, 0xd

    const/4 v4, 0x2

    const-string v5, "RegiGvnVzw"

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    .line 214
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 215
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "Keep going IMS deregistration"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-array v3, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v3, v2

    .line 221
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 229
    const-string v0, "Call status is not idle but CDMA-less should allow this."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_4
    const-string v0, "TelephonyCallStatus is not idle"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v1

    .line 236
    :cond_5
    :goto_0
    return v2
.end method

.method protected checkEpdgEvent(I)Z
    .locals 3
    .param p1, "rat"    # I

    .line 200
    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 201
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "RegiGvnVzw"

    const-string v1, "EPDG is not actually connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected checkNetworkEvent(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 241
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "RegiGvnVzw"

    const-string v1, "mHasPendingOmadmUpdate is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_OTA:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 244
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkProfileUpdateFromDM(Z)V
    .locals 4
    .param p1, "force"    # Z

    .line 729
    const-string v0, "RegiGvnVzw"

    const-string v1, "checkProfileUpdateFromDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 732
    return-void
.end method

.method protected checkVowifiSetting(I)Z
    .locals 5
    .param p1, "rat"    # I

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isVoWiFiSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const-string v0, "RegiGvnVzw"

    const-string v1, "VoWiFi feature is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->CSC_DISABLED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 253
    return v3

    .line 255
    :cond_0
    return v4
.end method

.method public determineDeRegistration(II)Z
    .locals 4
    .param p1, "foundBestRat"    # I
    .param p2, "currentRat"    # I

    .line 1233
    if-nez p1, :cond_0

    .line 1234
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedToDeRegistration: no IMS service for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Deregister."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no IMS service for network : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isLegacy3gppNetwork(I)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1238
    const/4 v0, 0x1

    return v0

    .line 1241
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result v0

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 18
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

    .line 756
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super/range {p0 .. p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    .line 757
    .local v2, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 761
    :cond_0
    const-string/jumbo v3, "persist.sys.ims_test_mode"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "RegiGvnVzw"

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 762
    const-string v3, "by VZW IMS_TEST_MODE_PROP - remove all service"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 767
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 768
    const-string/jumbo v3, "ro.product.first_api_level"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v7, 0x1d

    if-ge v3, v7, :cond_2

    .line 769
    const-string/jumbo v3, "smsip"

    const-string v7, "by unsupported E911 over SMS"

    invoke-virtual {v0, v2, v3, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    .line 774
    const/16 v3, 0xd

    const-string v7, "mmtel"

    const-string v8, "mmtel-video"

    if-ne v1, v3, :cond_3

    .line 776
    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getVolteAllowedWithDsac()Z

    move-result v9

    if-nez v9, :cond_3

    .line 777
    const-string v9, "by DSAC feature"

    invoke-virtual {v0, v2, v7, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0, v2, v8, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_DSAC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 784
    :cond_3
    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v10, "keep_msisdn_validation"

    invoke-static {v9, v10, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v9

    .line 785
    .local v9, "keepMsisdnValidation":Z
    iget v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurImpu:I

    if-eq v10, v6, :cond_4

    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v11}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/sec/internal/helper/os/ITelephonyManager;->validateMsisdn(I)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v9, :cond_6

    .line 786
    :cond_4
    iget v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v10}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 788
    const-string v10, "CDMALess IMSI based"

    invoke-virtual {v0, v2, v8, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_5
    const-string v10, "by limited regi"

    invoke-virtual {v0, v2, v8, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v0, v2, v7, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_LIMITED_MODE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 796
    :cond_6
    :goto_0
    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isInvite403DisabledService(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 797
    const-string v10, "Invite 403"

    invoke-virtual {v0, v2, v8, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, v2, v7, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_INVITE_403:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 802
    :cond_7
    if-ne v1, v3, :cond_8

    .line 803
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->applySSACPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 808
    :cond_8
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-interface {v3, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCallCount(I)[I

    move-result-object v3

    aget v3, v3, v6

    if-lez v3, :cond_9

    move v3, v6

    goto :goto_1

    :cond_9
    move v3, v4

    .line 809
    .local v3, "isVTcallExist":Z
    :goto_1
    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v10

    .line 811
    .local v10, "isRoaming":Z
    if-eqz v10, :cond_b

    .line 812
    iget-object v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "data_roaming"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v6, :cond_a

    move v11, v6

    goto :goto_2

    :cond_a
    move v11, v4

    .local v11, "dataAllowed":Z
    :goto_2
    goto :goto_3

    .line 814
    .end local v11    # "dataAllowed":Z
    :cond_b
    iget-object v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v11

    .line 816
    .restart local v11    # "dataAllowed":Z
    :goto_3
    iget v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DataAllowed: romaing ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v12, v13}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 818
    const/16 v12, 0x12

    if-eq v1, v12, :cond_c

    if-eqz v11, :cond_d

    :cond_c
    iget-boolean v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eqz v13, :cond_d

    iget-boolean v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-nez v13, :cond_13

    .line 819
    :cond_d
    if-eqz v3, :cond_f

    .line 820
    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v13

    if-eqz v13, :cond_e

    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 822
    :cond_e
    const-string v13, "by EAB false but activated VT call is exist."

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iput-boolean v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    goto :goto_6

    .line 825
    :cond_f
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_13

    .line 827
    iget-boolean v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eqz v13, :cond_12

    iget-boolean v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-nez v13, :cond_10

    goto :goto_4

    .line 829
    :cond_10
    if-nez v11, :cond_11

    .line 830
    const-string v13, "by mobile data off"

    .local v13, "log":Ljava/lang/String;
    goto :goto_5

    .line 832
    .end local v13    # "log":Ljava/lang/String;
    :cond_11
    const-string/jumbo v13, "remove mmtel-video"

    .restart local v13    # "log":Ljava/lang/String;
    goto :goto_5

    .line 828
    .end local v13    # "log":Ljava/lang/String;
    :cond_12
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "by DM : volte("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "), eab("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 834
    .restart local v13    # "log":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v2, v8, v13}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .end local v13    # "log":Ljava/lang/String;
    :cond_13
    :goto_6
    iget-boolean v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    const-string/jumbo v14, "presence"

    if-nez v13, :cond_14

    .line 844
    const-string v13, "by volteEnabled false - presence"

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v5, "by volteEnabled false"

    invoke-virtual {v0, v2, v14, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_14
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-interface {v5, v13}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 849
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    iget-object v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 850
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v12

    invoke-static {v15, v4, v12}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v4

    .line 849
    invoke-static {v5, v13, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 851
    .local v4, "enabledRcsServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v5

    array-length v12, v5

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_16

    aget-object v15, v5, v13

    .line 852
    .local v15, "service":Ljava/lang/String;
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15

    .line 853
    const-string v6, "Disable from ACS"

    invoke-virtual {v0, v2, v15, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .end local v15    # "service":Ljava/lang/String;
    :cond_15
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_7

    .line 859
    :cond_16
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    iget v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    .line 860
    invoke-static {v5, v6, v12}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    goto :goto_8

    :cond_17
    const/4 v6, 0x0

    :goto_8
    move v5, v6

    .line 861
    .local v5, "isRcsEnabledByUser":Z
    if-eqz v5, :cond_19

    if-eqz v10, :cond_18

    const/16 v6, 0x12

    if-eq v1, v6, :cond_18

    goto :goto_9

    :cond_18
    move/from16 v16, v3

    goto :goto_c

    .line 862
    :cond_19
    :goto_9
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    array-length v12, v6

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v12, :cond_1b

    aget-object v15, v6, v13

    .line 863
    .restart local v15    # "service":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    .end local v3    # "isVTcallExist":Z
    .local v16, "isVTcallExist":Z
    const-string v3, "Roaming:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v15, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 863
    .end local v16    # "isVTcallExist":Z
    .restart local v3    # "isVTcallExist":Z
    :cond_1a
    move/from16 v16, v3

    .line 862
    .end local v3    # "isVTcallExist":Z
    .end local v15    # "service":Ljava/lang/String;
    .restart local v16    # "isVTcallExist":Z
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    move/from16 v3, v16

    goto :goto_a

    .end local v16    # "isVTcallExist":Z
    .restart local v3    # "isVTcallExist":Z
    :cond_1b
    move/from16 v16, v3

    .line 869
    .end local v3    # "isVTcallExist":Z
    .restart local v16    # "isVTcallExist":Z
    :goto_c
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v1, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 870
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v3, :cond_1e

    aget-object v12, v1, v6

    .line 871
    .local v12, "service":Ljava/lang/String;
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    .line 872
    const-string v13, "No DualRcs"

    invoke-virtual {v0, v2, v12, v13}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .end local v12    # "service":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 848
    .end local v4    # "enabledRcsServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "isRcsEnabledByUser":Z
    .end local v16    # "isVTcallExist":Z
    .restart local v3    # "isVTcallExist":Z
    :cond_1d
    move/from16 v16, v3

    .line 879
    .end local v3    # "isVTcallExist":Z
    .restart local v16    # "isVTcallExist":Z
    :cond_1e
    if-eqz v10, :cond_1f

    .line 880
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->applyCsfbSupported(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 884
    :cond_1f
    iget v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    .line 885
    .local v1, "slotInfo":Lcom/sec/internal/ims/core/SlotBasedConfig;
    if-eqz v1, :cond_20

    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_20

    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 886
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_20

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 887
    const-string v3, "TTY ON"

    invoke-virtual {v0, v2, v8, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, v2, v7, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_CS_TTY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 891
    :cond_20
    return-object v2
.end method

.method public finishOmadmProvisioningUpdate()V
    .locals 1

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    .line 915
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->setRadioPower(Z)V

    .line 916
    return-void
.end method

.method protected getWaitTime()I
    .locals 6

    .line 719
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegRetryTime:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 720
    .local v0, "currentRetryTimer":I
    const/4 v1, 0x0

    .line 721
    .local v1, "random":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 722
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegRetryTime:[I

    aget v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 1226
    const/4 v0, 0x1

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 260
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkVowifiSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkEpdgEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 260
    :goto_1
    return v0
.end method

.method public isThrottled()Z
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDiscardCurrentNetwork:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "RegiGvnVzw"

    const-string v1, "Under discard current network. Do not try IMS registration."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isThrottled()Z

    move-result v0

    return v0
.end method

.method public needPendingPdnConnected()Z
    .locals 4

    .line 1246
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v2, "RegiGvnVzw"

    if-ne v0, v1, :cond_0

    .line 1248
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v1, "onPdnConnected: Pending 1 sec! PCO not yet received."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1250
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V

    .line 1251
    const/4 v0, 0x1

    return v0

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-ne v0, v1, :cond_1

    .line 1253
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v1, "onPdnConnected: 1 sec delay has expired!"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1254
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V

    .line 1258
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "callType"    # I

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStatus: event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 578
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isRegistering()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    const-string v2, "onCallStatus: defer call status event to registration done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->setCallSnapshot(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 582
    return-void

    .line 586
    :cond_0
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v2, :cond_3

    .line 587
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 589
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v6, v6, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const-string v7, "onCallStatus: process pending deregistration."

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 591
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 593
    :cond_1
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    if-eqz v2, :cond_2

    .line 594
    const-string v2, "onCallStatus: process pending updateRegistration."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 596
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    .line 598
    :cond_2
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasVoLteCall:Z

    goto :goto_0

    .line 600
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isVoWiFiSupported(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-direct {p0, v1, p1, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->needReRegiOnCallStatusChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 603
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 605
    :cond_4
    return-void
.end method

.method public onConfigUpdated()V
    .locals 13

    .line 981
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v2, "mmtel"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    .line 982
    .local v0, "dmVolteEnabled":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v4, "mmtel-video"

    invoke-static {v1, v4, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v1

    .line 983
    .local v1, "dmLvcEnabled":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string/jumbo v5, "presence"

    invoke-static {v2, v5, v3, v4}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v2

    .line 984
    .local v2, "dmEabEnabled":Z
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readVCEConfigValue(Landroid/content/Context;)Z

    move-result v4

    .line 985
    .local v4, "dmVceEnabled":Z
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readDmTimsTimer(Landroid/content/Context;)I

    move-result v5

    .line 987
    .local v5, "dmTimsTimer":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigUpdated: VOLTE_ENABLED ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] -> ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "RegiGvnVzw"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eq v0, v6, :cond_5

    .line 989
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    .line 990
    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 991
    sget-object v10, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 993
    :cond_0
    sget-object v10, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 994
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "LRA"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 995
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v10, v6, v11}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    .line 996
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v10

    iget v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v12, "Turn off SMS_OVER_IP based on VOLTE_ENABLED"

    invoke-virtual {v10, v11, v12}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 997
    const v10, 0x100a0010

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",OFF:SMS_OVER_IP"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1000
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v10, v6, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->setInvite403DisableService(ZI)V

    .line 1001
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_4

    .line 1002
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v10

    const/16 v11, 0xd

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1003
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v10

    const/16 v11, 0xe

    if-ne v10, v11, :cond_2

    goto :goto_1

    .line 1008
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v10, 0x1d

    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1009
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v11, "profile updated"

    invoke-virtual {v3, v10, v6, v6, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_2

    .line 1004
    :cond_3
    :goto_1
    const-string v6, "onConfigUpdated, need network detach/reattach"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    .line 1006
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendOmadmProvisioningUpdateStarted(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_2

    .line 1012
    :cond_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    .line 1016
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigUpdated: VCE_CONFIG ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    if-eq v4, v3, :cond_6

    .line 1018
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    .line 1019
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v3, v6}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 1020
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v3, v6, v10}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 1023
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigUpdated: VZW_TIMS_TIMER ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    if-eq v3, v5, :cond_7

    .line 1025
    iput v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    .line 1033
    :cond_7
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    if-ne v1, v3, :cond_8

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-eq v2, v3, :cond_9

    .line 1034
    :cond_8
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    .line 1035
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    .line 1036
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyOmadmVolteConfigDone(I)V

    .line 1038
    :cond_9
    return-void
.end method

.method public onDeregistrationDone(Z)V
    .locals 3
    .param p1, "requested"    # Z

    .line 1065
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onDeregistrationDone(Z)V

    .line 1071
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1073
    const-string v0, "ImsPdnRequst"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startTimsTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 1075
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    const-string v1, "RegiGvnVzw"

    const-string v2, "Local deregi done by SSAC. Discard current network!"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDiscardCurrentNetwork:Z

    .line 1079
    :cond_1
    :goto_0
    return-void
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 953
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPdnRequestFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnRejectCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    .line 957
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 962
    :cond_0
    const/4 v0, 0x0

    .line 963
    .local v0, "notify":Z
    const-string v2, "PDN_THROTTLED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 964
    const/4 v0, 0x1

    goto :goto_0

    .line 966
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnRejectCounter:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnRejectCounter:I

    .line 967
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnRejectCounter:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    .line 968
    const/4 v0, 0x1

    .line 972
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 973
    const-string v2, "notifyImsNotAvailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 975
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnRejectCounter:I

    .line 977
    :cond_3
    return-void

    .line 958
    .end local v0    # "notify":Z
    :cond_4
    :goto_1
    const-string v0, "Do not notify"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 5
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 438
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, v0}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, v0}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Publish Error. DeRegister.."

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 439
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "Publish Error. ReRegister.."

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 445
    :cond_2
    :goto_1
    return-void
.end method

.method public onRegistrationDone()V
    .locals 3

    .line 266
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "Registered"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->access$000(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->access$100(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/ims/util/SipError;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->access$200(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->clear()V

    .line 275
    :cond_0
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 7
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fail count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const-string v0, "handle call snapshot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->access$000(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->access$100(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/ims/util/SipError;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->access$200(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->clear()V

    .line 301
    :cond_0
    if-gez p2, :cond_1

    .line 302
    const/4 p2, 0x0

    .line 305
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    if-nez v0, :cond_15

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 306
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    .line 307
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 318
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-ne v0, v6, :cond_3

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    const-string v1, "RegiGvnVzw: Discard current network immediately when PCO=5"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 331
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDiscardCurrentNetwork:Z

    goto/16 :goto_4

    .line 333
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    .line 334
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    add-int/2addr v0, v5

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mNumOfPcscfIp:I

    rem-int/2addr v0, v6

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_5

    .line 337
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    if-ge v0, v6, :cond_4

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 343
    :cond_4
    return-void

    .line 346
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    const-string v0, "onRegistrationError: start from 1st P-CSCF."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v5, p2

    mul-long/2addr v5, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegiAt:J

    .line 350
    int-to-long v0, p2

    mul-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startRetryTimer(J)V

    goto/16 :goto_4

    .line 351
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BAD_REQUEST:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->PAYMENT_REQUIRED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_1

    .line 365
    :cond_7
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    .line 366
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_8

    goto :goto_0

    .line 391
    :cond_8
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    if-le v0, v6, :cond_a

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    if-nez v0, :cond_a

    .line 392
    const-string v0, "onRegistrationError: all PCSCF failed to Regi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCsfbSupported(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 394
    :cond_9
    const-string v0, "onRegistrationError: Discard current N/W. CSFB is unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDiscardCurrentNetwork:Z

    .line 400
    :cond_a
    if-eqz p3, :cond_b

    .line 401
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    .line 405
    :cond_b
    if-nez p2, :cond_c

    .line 406
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->getWaitTime()I

    move-result p2

    .line 409
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v5, p2

    mul-long/2addr v5, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegiAt:J

    .line 410
    int-to-long v0, p2

    mul-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startRetryTimer(J)V

    goto/16 :goto_4

    .line 369
    :cond_d
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurImpu:I

    if-ne v0, v5, :cond_e

    .line 370
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsPermanentStopped:Z

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 372
    const-string v0, "onRegistrationError: Failed for all PCSCFs with IMSI_BASED"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 377
    :cond_e
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    if-nez v0, :cond_f

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    const-string/jumbo v1, "try regi with IMSI for next Registration"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 379
    iput v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurImpu:I

    .line 383
    :cond_f
    if-nez p2, :cond_10

    .line 384
    const/16 p2, 0x1e

    .line 387
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v5, p2

    mul-long/2addr v5, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegiAt:J

    .line 388
    int-to-long v0, p2

    mul-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startRetryTimer(J)V

    goto :goto_4

    .line 352
    :cond_11
    :goto_1
    if-eqz p3, :cond_12

    .line 354
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsPermanentStopped:Z

    goto :goto_4

    .line 355
    :cond_12
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    if-le v0, v5, :cond_13

    .line 357
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsPermanentStopped:Z

    goto :goto_4

    .line 359
    :cond_13
    if-nez p2, :cond_14

    .line 360
    const/16 p2, 0x1e

    .line 362
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v5, p2

    mul-long/2addr v5, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegiAt:J

    .line 363
    int-to-long v0, p2

    mul-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startRetryTimer(J)V

    goto :goto_4

    .line 308
    :cond_15
    :goto_2
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    .line 309
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    .line 310
    if-eqz p3, :cond_16

    .line 311
    const/16 p2, 0x3c

    goto :goto_3

    .line 314
    :cond_16
    const/4 p2, 0x1

    .line 316
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v5, p2

    mul-long/2addr v5, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegiAt:J

    .line 317
    int-to-long v0, p2

    mul-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startRetryTimer(J)V

    .line 413
    :goto_4
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 681
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

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->onSipError_MmtelVoice(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p2

    goto :goto_0

    .line 684
    :cond_0
    const-string/jumbo v0, "smsip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2b

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 685
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasVoLteCall:Z

    if-nez v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "503 Service Unavailable: IMS Outage for SMS service request"

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 697
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 699
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasVoLteCall:Z

    if-nez v0, :cond_3

    .line 700
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x0

    const-string v4, "503 Service Unavailable: IMS Outage for Non-voice request"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 714
    :cond_4
    :goto_0
    return-object p2

    .line 710
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSubscribeError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, v0}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, v0}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasVoLteCall:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x0

    const-string v4, "Subscribe Error. DeRegister.."

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    goto :goto_1

    .line 452
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "Subscribe Error. ReRegister.."

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 465
    :cond_3
    :goto_1
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 4
    .param p1, "callState"    # I

    .line 1050
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTelephonyCallStatusChanged(I)V

    .line 1051
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    .line 1053
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1054
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1058
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "call state changed"

    invoke-virtual {v1, v2, v0, v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 1055
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendOmadmProvisioningUpdateStarted(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1061
    :cond_2
    :goto_1
    return-void
.end method

.method public onTimsTimerExpired()V
    .locals 2

    .line 469
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTimsTimerExpired()V

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCsfbSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "RegiGvnVzw"

    const-string v1, "Continue IMS regi retry..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->resetRetry()V

    .line 482
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->stopRetryTimer()V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDiscardCurrentNetwork:Z

    .line 487
    :goto_0
    return-void
.end method

.method public onUpdatedPcoInfo(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pdn"    # Ljava/lang/String;
    .param p2, "pco"    # I

    .line 1156
    const-string v0, "ims"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    .line 1158
    .local v0, "pcoType":Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdatedPcoInfo: PCO Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V

    .line 1161
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurImpu:I

    .line 1168
    const-string/jumbo v1, "set PREFERED_IMPU as IMSI_BASED"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_0
    return v3

    .line 1172
    .end local v0    # "pcoType":Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public releaseThrottle(I)V
    .locals 2
    .param p1, "releaseCase"    # I

    .line 933
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->resetRetry()V

    .line 939
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->stopRetryTimer()V

    goto :goto_1

    .line 940
    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 941
    :cond_2
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDiscardCurrentNetwork:Z

    goto :goto_1

    .line 934
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsPermanentStopped:Z

    .line 935
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurImpu:I

    .line 936
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 944
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsPermanentStopped:Z

    if-nez v0, :cond_5

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseThrottle: case by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_5
    return-void
.end method

.method public resetPcoType()V
    .locals 1

    .line 1177
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 1178
    return-void
.end method

.method public resetRetry()V
    .locals 3

    .line 920
    const-string v0, "RegiGvnVzw"

    const-string/jumbo v1, "resetRetry()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mFailureCounter:I

    .line 923
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurPcscfIpIdx:I

    .line 924
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegiAt:J

    .line 926
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-eq v1, v2, :cond_0

    .line 927
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCurImpu:I

    .line 929
    :cond_0
    return-void
.end method

.method public startOmadmProvisioningUpdate()V
    .locals 4

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    .line 908
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->setRadioPower(Z)V

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendFinishOmadmProvisioningUpdate(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 910
    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 1089
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    const-string v1, "RegiGvnVzw"

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    const-string v0, "ignore Tims timer for hVoLTE device in VZW NW"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void

    .line 1093
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    const/16 v2, 0x270f

    if-ne v0, v2, :cond_1

    .line 1095
    const-string v0, "ignore Tims timer for labtest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void

    .line 1098
    :cond_1
    if-ltz v0, :cond_2

    const/16 v2, 0xff

    if-le v0, v2, :cond_3

    .line 1099
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimsTimer; Invalid DM value ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] for Tims Timer. Use default value[120]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/16 v0, 0x78

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    .line 1102
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimer:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    .line 1103
    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationGovernorVzw [mHasPendingDeregistration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastVolteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastLvcEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastEabEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastVceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInviteForbidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsInviteForbidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmVolteNodeUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasPendingOmadmUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOverrideEpdgCellularPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVolteAllowedWithDsac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 1267
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getVolteAllowedWithDsac()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    return-object v0
.end method
