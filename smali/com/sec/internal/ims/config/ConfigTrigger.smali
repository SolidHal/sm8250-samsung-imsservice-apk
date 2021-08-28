.class public Lcom/sec/internal/ims/config/ConfigTrigger;
.super Ljava/lang/Object;
.source "ConfigTrigger.java"


# static fields
.field private static final INTENT_ACTION_RCS_AUTOCONFIG_START:Ljava/lang/String; = "com.android.ims.RCS_AUTOCONFIG_START"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"


# instance fields
.field private mAcsTryReason:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field private final mContext:Landroid/content/Context;

.field private mDualSimRcsAutoConfig:Z

.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mNeedResetConfig:Z

.field private mReadyStartCmdList:Landroid/util/SparseBooleanArray;

.field private mReadyStartForceCmd:Z

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-class v0, Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p4, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:Z

    .line 92
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    .line 94
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 100
    iput-object p3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 101
    iput-object p4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 102
    return-void
.end method

.method private triggerAutoConfigForKor(ZILjava/util/List;)Z
    .locals 6
    .param p1, "forceAutoconfig"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation

    .line 208
    .local p3, "regiTaskList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 210
    .local v1, "rTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 211
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "triggerAutoConfig : already autoconfiguration is processing and not get complete notify yet"

    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    return v4

    .line 216
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "RegisterTask setState: CONFIGURING"

    invoke-virtual {v0, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 218
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 220
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "phoneId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result v3

    const/16 v4, 0xd

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, v4, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_1

    .line 225
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, v4, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p1, v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 227
    goto :goto_1

    .line 230
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 231
    .local v2, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v2, :cond_4

    .line 233
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    const/16 v5, 0xb

    if-ne v3, v5, :cond_4

    .line 234
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v3, v5, :cond_4

    .line 235
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v3, "MSISDN is null, try to RCS ACS after registered VoLTE"

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    return v4

    .line 241
    .end local v1    # "rTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .end local v2    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_4
    goto/16 :goto_0

    .line 242
    :cond_5
    :goto_1
    return v2
.end method


# virtual methods
.method protected getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 3
    .param p1, "phoneId"    # I

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 423
    .local v0, "rsn":Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    if-nez v0, :cond_0

    .line 424
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_0
    return-object v0
.end method

.method protected getDualSimRcsAutoConfig()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    return v0
.end method

.method protected getNeedResetConfig()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    return v0
.end method

.method protected getReadyStartCmdList(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method protected getReadyStartCmdListIndexOfKey(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method protected getReadyStartForceCmd()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:Z

    return v0
.end method

.method protected isValidAcsVersion(I)Z
    .locals 12
    .param p1, "phoneId"    # I

    .line 246
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isValidAcsVersion:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 248
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 249
    return v1

    .line 251
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    return v1

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v3, "DDS set to other SIM"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    return v1

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {p1, v0, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isSimMobilityRCS(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 259
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isValidAcsVersion: This is a other country SIM, RCS disabled in SIM mobility"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    return v1

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    .line 265
    .local v2, "userSetting":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v4

    .line 267
    .local v4, "version":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v5

    .line 268
    .local v5, "isRcsAcsCompleted":Z
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result v6

    .line 269
    .local v6, "mdmrcsstatus":Z
    sget-object v7, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RCS switch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", isRcsAcsCompleted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    if-nez v6, :cond_5

    .line 272
    sget-object v3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v7, "RCS service isn\'t allowed by MDM"

    invoke-static {v3, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    return v1

    .line 276
    :cond_5
    const-string v7, ". This shouldn\'t happen!"

    const-string v8, "RCS switch is on & config version: "

    if-nez v5, :cond_6

    .line 277
    sget-object v1, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    return v2

    .line 281
    :cond_6
    if-nez v2, :cond_9

    .line 283
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 284
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v10, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "rcsAs":Ljava/lang/String;
    sget-object v11, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v9, v11, :cond_7

    sget-object v11, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v11, :cond_8

    :cond_7
    const-string v11, "jibe"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 286
    :cond_8
    sget-object v3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "userSetting is disabled"

    invoke-static {v3, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    return v1

    .line 291
    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v10    # "rcsAs":Ljava/lang/String;
    :cond_9
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x3

    if-ne v9, v10, :cond_a

    goto :goto_1

    .line 297
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_b

    .line 301
    sget-object v3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    return v1

    .line 305
    :cond_b
    return v3

    .line 293
    :cond_c
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "version is improper : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    return v1
.end method

.method protected isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 7
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 151
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 152
    .local v0, "phoneId":I
    sget-object v1, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isWaitAutoConfig:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 155
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 156
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v0, v2, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isSimMoActivatedAndRcsEurSupported(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "mobilityRCS":Z
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    sget-object v5, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v6, "isWaitAutoConfig: RCS is enabled in SIM mobility"

    invoke-static {v5, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    const/4 v3, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    const/4 v3, 0x1

    .line 166
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 167
    sget-object v5, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v6, "isWaitAutoConfig: This is a other country SIM, RCS disabled in SIM mobility"

    invoke-static {v5, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    return v4

    .line 171
    .end local v3    # "mobilityRCS":Z
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 172
    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 173
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v3

    return v3

    .line 175
    :cond_4
    return v4
.end method

.method protected resetAcsTryReason(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 432
    .local v0, "rsn":Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-eq v0, v1, :cond_1

    .line 433
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 434
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_1
    return-void
.end method

.method protected setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "autoconfigTryReason"    # Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoconfigTryReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",TR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000005

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method protected setDualSimRcsAutoConfig(Z)V
    .locals 3
    .param p1, "isDualSimAcs"    # Z

    .line 443
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualSimRcsAutoConfig: isDualSimAcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    .line 445
    return-void
.end method

.method protected setNeedResetConfig(Z)V
    .locals 3
    .param p1, "needResetConfig"    # Z

    .line 473
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedResetConfig: needResetConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    .line 475
    return-void
.end method

.method protected setReadyStartCmdList(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "readyStartCmd"    # Z

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 453
    return-void
.end method

.method protected setReadyStartForceCmd(Z)V
    .locals 3
    .param p1, "readyStartForceCmd"    # Z

    .line 464
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReadyStartForceCmd: readyStartForceCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:Z

    .line 466
    return-void
.end method

.method protected setRegisterFromApp(ZI)V
    .locals 7
    .param p1, "tryregi"    # Z
    .param p2, "phoneId"    # I

    .line 126
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRegisterFromApp:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    if-eqz p1, :cond_4

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 134
    .local v2, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v4, v3

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    sget-object v3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "setRegisterFromApp: set AcsCompleteStatus as false"

    invoke-static {v3, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    .line 138
    .end local v2    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_1
    goto :goto_0

    .line 139
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 140
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v1, :cond_3

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "setRegisterFromApp: reset acsSettings"

    invoke-static {v2, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 143
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    .line 145
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p2, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 147
    .end local v1    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    .line 148
    return-void
.end method

.method protected setStateforTriggeringACS(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 105
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setStateforTriggeringACS:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 107
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 111
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 112
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_3

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 114
    .local v4, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v5, v6, :cond_1

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/sec/internal/constants/Mno;->CLARO_COLOMBIA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/sec/internal/constants/Mno;->CLARO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/sec/internal/constants/Mno;->TIM_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_2

    .line 117
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "RegisterTask setState: CONFIGURING"

    invoke-virtual {v5, p1, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 118
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 121
    .end local v4    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_2
    goto :goto_0

    .line 123
    :cond_3
    return-void

    .line 109
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_4
    :goto_1
    return-void
.end method

.method protected startAutoConfig(ZLandroid/os/Message;I)V
    .locals 3
    .param p1, "forced"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 349
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoConfig: forced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",FORCE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000003

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 351
    if-nez p1, :cond_0

    .line 352
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    goto :goto_0

    .line 354
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 356
    :goto_0
    return-void
.end method

.method protected startAutoConfigDualsim(ILandroid/os/Message;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 359
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 360
    return-void
.end method

.method protected startConfig(ILandroid/os/Message;I)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessage(II)V

    .line 364
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startConfig: cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 396
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "rcsAs":Ljava/lang/String;
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 371
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_1

    const-string v2, "jibe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "sec"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendBroadcast com.android.ims.RCS_AUTOCONFIG_START"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.ims.RCS_AUTOCONFIG_START"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v3, "com.samsung.android.messaging"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    .end local v0    # "rcsAs":Ljava/lang/String;
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autoconfig start: cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 393
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessage(II)V

    .line 394
    nop

    .line 398
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected triggerAutoConfig(ZILjava/util/List;)Z
    .locals 6
    .param p1, "forceAutoconfig"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation

    .line 179
    .local p3, "regiTaskList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "triggerAutoConfig:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 181
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 185
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 186
    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 187
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RCS is enabled, triggering autoconfiguration... forceAutoconfig:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfigForKor(ZILjava/util/List;)Z

    move-result v1

    return v1

    .line 191
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "phoneId"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getDualSimRcsAutoConfig()Z

    move-result v4

    const/16 v5, 0xd

    if-eqz v4, :cond_4

    .line 194
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, v5, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfigDualsim(ILandroid/os/Message;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, v5, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, p1, v5, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 199
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    goto :goto_1

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, v5, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, p1, v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 204
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_5
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 182
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_6
    :goto_2
    return v1
.end method

.method protected tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V
    .locals 3
    .param p1, "workflow"    # Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .param p2, "phoneId"    # I
    .param p3, "isSimInfochanged"    # Z
    .param p4, "mobileNetwork"    # Z

    .line 309
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryAutoConfig: mobileNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    if-nez p1, :cond_0

    .line 311
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryAutoConfig: workflow is null"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    return-void

    .line 315
    :cond_0
    const v0, 0x13000007

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",FORCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartForceCmd()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",RST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getNeedResetConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->updateMobileNetworkforDualRcs(I)Z

    move-result p4

    .line 321
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryAutoConfig: updateMobileNetworkforDualRcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getDualSimRcsAutoConfig()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 323
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startAutoConfigDualsim(Z)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    goto :goto_1

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartForceCmd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getNeedResetConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfigNeedResetConfig(Z)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setNeedResetConfig(Z)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfig(Z)V

    .line 333
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    goto :goto_1

    .line 335
    :cond_3
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 336
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz p3, :cond_4

    instance-of v2, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;

    if-eqz v2, :cond_4

    .line 337
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfig(Z)V

    goto :goto_1

    .line 339
    :cond_4
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startAutoConfig(Z)V

    .line 343
    .end local v0    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :goto_1
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_5

    .line 344
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 346
    :cond_5
    return-void
.end method

.method protected tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 9
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 478
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 479
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    .line 480
    .local v1, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    .line 481
    .local v2, "config":Lcom/sec/internal/ims/config/params/ACSConfig;
    const/4 v3, 0x0

    .line 482
    .local v3, "forceAcs":Z
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 484
    .local v4, "isRcsEnabled":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    if-eqz v4, :cond_1

    .line 487
    sget-object v7, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ACS version: -2, IMS RCS switch enabled - set force autoconfig NOW."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->clear()V

    .line 489
    const/4 v3, 0x1

    .line 491
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 492
    return v6

    .line 494
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 495
    sget-object v7, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v8, "autoconfig is not ready"

    invoke-static {v7, v0, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 498
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v8, :cond_5

    .line 499
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v7

    invoke-virtual {p0, v6, v7, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)Z

    .line 500
    return v5

    .line 503
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDisabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEurNonRjil(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 504
    sget-object v6, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Version & validity == 0. Autoconfiguration will be performed after next reboot"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v5

    .line 507
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 508
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {p0, v3, v6, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)Z

    .line 509
    return v5

    .line 512
    :cond_5
    return v6
.end method
