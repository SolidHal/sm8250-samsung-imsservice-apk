.class public abstract Lcom/sec/internal/ims/core/RegistrationManager;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    }
.end annotation


# static fields
.field protected static final ADHOC_ID_SIM2_OFFSET:I = 0x4e20

.field protected static final ADHOC_IMS_PROFILE_ID_BASE:I = 0x2710

.field protected static final HANDOFF_EVENT_TIMER:I = 0x12c

.field protected static final ID_SIM2_OFFSET:I = 0x3e8

.field protected static final MAX_RECOVERY_ACTION_COUNT:I = 0x7


# instance fields
.field protected mAresLookupRequired:Z

.field protected mAuEmergencyProfile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallState:I

.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field protected mContext:Landroid/content/Context;

.field protected mEmmCause:I

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

.field protected mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mHasSilentE911:Landroid/os/Message;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsNonDDSDeRegRequired:Z

.field protected mIsVolteAllowedWithDsac:Z

.field protected mMoveNextPcscf:Z

.field protected mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

.field protected mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mPhoneIdForSilentE911:I

.field protected mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

.field protected mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

.field private mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mThirdPartyFeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field protected mlegacyPhoneCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    .line 120
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHasSilentE911:Landroid/os/Message;

    .line 121
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPhoneIdForSilentE911:I

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mMoveNextPcscf:Z

    .line 124
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCallState:I

    .line 126
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 129
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonDDSDeRegRequired:Z

    .line 133
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mlegacyPhoneCount:I

    .line 140
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    .line 150
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    return-void
.end method

.method private getInstanceId(I)Ljava/lang/String;
    .locals 13
    .param p1, "phoneId"    # I

    .line 1257
    const-string v0, "RegiMgr"

    const-string v1, "getInstanceId:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1259
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    .line 1260
    const-string v0, ""

    return-object v0

    .line 1262
    :cond_0
    const-string v2, "instanceId"

    .line 1263
    .local v2, "SHAREDPREF_INSTANCE_ID":Ljava/lang/String;
    const-string/jumbo v3, "slotId"

    .line 1264
    .local v3, "SHAREDPREF_SLOT_ID":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v5, "ims_user_data"

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v2, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1265
    .local v4, "instanceId":Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v7, v5, v3, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1268
    .local v6, "slotId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1269
    const-string v7, "imei"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0>"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1270
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove invalid instance-ID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1271
    const-string v4, ""

    .line 1275
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    if-eq v7, v8, :cond_9

    .line 1276
    :cond_2
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v7

    .line 1277
    .local v7, "deviceId":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1278
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v8}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 1281
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ">"

    if-nez v8, :cond_8

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_0

    .line 1284
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceId len: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, p1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1286
    move-object v8, v7

    .line 1287
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xe

    if-ge v10, v11, :cond_5

    .line 1288
    const-string v10, "Invalid deviceId. Read imei again"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v8

    .line 1292
    :cond_5
    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v10

    .line 1293
    .local v10, "meid":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v12, v11, :cond_6

    .line 1294
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getInstanceId: imei len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, p1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<urn:gsma:imei:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getFormattedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "instanceId":Ljava/lang/String;
    .local v0, "instanceId":Ljava/lang/String;
    goto :goto_1

    .line 1296
    .end local v0    # "instanceId":Ljava/lang/String;
    .restart local v4    # "instanceId":Ljava/lang/String;
    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v12, v11, :cond_7

    .line 1297
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getInstanceId: meid len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, p1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<urn:device-id:meid:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getFormattedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "instanceId":Ljava/lang/String;
    .restart local v0    # "instanceId":Ljava/lang/String;
    goto :goto_1

    .line 1300
    .end local v0    # "instanceId":Ljava/lang/String;
    .restart local v4    # "instanceId":Ljava/lang/String;
    :cond_7
    const-string v9, "getInstanceId: imei/meid seems be wrong!"

    invoke-static {v0, p1, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1282
    .end local v8    # "imei":Ljava/lang/String;
    .end local v10    # "meid":Ljava/lang/String;
    :cond_8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<urn:uuid:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1304
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v5, v2, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v5, v3, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    .end local v7    # "deviceId":Ljava/lang/String;
    :cond_9
    return-object v4
.end method

.method static synthetic lambda$getImsProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 2
    .param p0, "p"    # Lcom/sec/ims/settings/ImsProfile;

    .line 691
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getPreferredImpuOnPdn$1(ILcom/sec/ims/ImsRegistration;)Z
    .locals 1
    .param p0, "pdn"    # I
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 1327
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyCmcRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 4
    .param p1, "registered"    # Z
    .param p2, "registration"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "error"    # Lcom/sec/ims/ImsRegistrationError;

    .line 653
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCmcRegistration(): CmcType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 658
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    if-eqz v0, :cond_3

    .line 659
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 660
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 661
    add-int/lit8 v2, v2, -0x1

    .line 663
    if-eqz p1, :cond_1

    .line 664
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v3, p2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_1

    .line 666
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v3, p2, p3}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 668
    :catch_0
    move-exception v3

    .line 669
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 670
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 672
    :cond_2
    const-string v3, "notifyCmcRegistration, finish"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 675
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private notifyImsP2pRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3
    .param p1, "registered"    # Z
    .param p2, "registration"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "errorCode"    # Lcom/sec/ims/ImsRegistrationError;

    .line 334
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 335
    .local v0, "cmcType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsP2pRegistration(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 338
    if-eqz p1, :cond_0

    .line 339
    :try_start_0
    invoke-interface {v1, p2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-interface {v1, p2, p3}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    goto :goto_1

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 347
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "delay"    # I

    .line 1207
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPendingUpdate(Z)V

    .line 1208
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1209
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1210
    return-void
.end method

.method public blockVoWifiRegisterOnRoaminByCsfbError(II)V
    .locals 3
    .param p1, "regihandle"    # I
    .param p2, "duration"    # I

    .line 1017
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1018
    return-void
.end method

.method protected buildUserAgentString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)Ljava/lang/String;
    .locals 19
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 1332
    move-object/from16 v1, p0

    move/from16 v2, p3

    const-string v0, "[IMEISV]"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v3, "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "volte"

    invoke-static {v4, v5, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1334
    .local v4, "isVolteEnabled":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 1337
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v8, 0x3

    if-eqz v4, :cond_a

    .line 1339
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v9

    .line 1340
    .local v9, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    const/16 v10, 0x14

    iget v11, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v11, :cond_1

    .line 1341
    const-string v10, "EPSFB"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1343
    :cond_1
    const-string v10, "VoLTE"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :goto_1
    iget-object v10, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "rcs"

    invoke-static {v10, v11, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v6, :cond_4

    .line 1348
    sget-object v10, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v10, :cond_2

    const-string v10, "ft_http"

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1349
    const-string v10, "RCSUP"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1348
    :cond_2
    move-object/from16 v11, p1

    .line 1351
    :cond_3
    const-string v10, "RCS"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1345
    :cond_4
    move-object/from16 v11, p1

    .line 1355
    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v10

    .line 1357
    .local v10, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "ePDG"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1358
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    :cond_5
    iget-object v12, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v13, "mmtel-video"

    invoke-static {v12, v13, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v6, :cond_6

    .line 1362
    const-string v6, "IR94"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "RTT"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_7

    .line 1366
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v12

    if-ne v12, v8, :cond_8

    .line 1367
    :cond_7
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "ussd"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1371
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    .end local v9    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .end local v10    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    :cond_9
    goto :goto_3

    .line 1374
    :cond_a
    move-object/from16 v11, p1

    const-string v6, "TAS"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    :goto_3
    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v6, :cond_b

    .line 1377
    const-string v6, "VVM"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_b
    const-string v6, ""

    .line 1381
    .local v6, "support":Ljava/lang/String;
    const-string v9, "-"

    .line 1382
    .local v9, "separator":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1383
    .local v12, "asupport":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    .line 1384
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1386
    :cond_c
    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1387
    .end local v12    # "asupport":Ljava/lang/String;
    goto :goto_4

    .line 1389
    :cond_d
    move-object/from16 v10, p2

    .line 1390
    .local v10, "sipUserAgent":Ljava/lang/String;
    const-string v12, "[SUPPORT]"

    invoke-virtual {v10, v12, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1391
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v13, "[OS_VERSION]"

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1392
    const-string/jumbo v12, "ro.build.PDA"

    invoke-static {v12}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1393
    .local v12, "pdaVer":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_IMS_ConfigVerUICCMobilitySpec"

    const-string v15, "2.0"

    invoke-virtual {v13, v2, v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1394
    .local v13, "uiccVersion":Ljava/lang/String;
    const-string v14, "iphonesubinfo"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v14

    .line 1396
    .local v14, "phoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    const-string v15, "RegiMgr"

    if-eqz v14, :cond_10

    .line 1397
    :try_start_0
    iget-object v8, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v8, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v8

    .line 1398
    .local v8, "deviceId":Ljava/lang/String;
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v3

    .end local v3    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v17, "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v3, 0xe

    if-le v5, v3, :cond_e

    .line 1399
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "support":Ljava/lang/String;
    .local v18, "support":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "imsservice"

    const/4 v6, 0x0

    invoke-interface {v14, v3, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1400
    .local v3, "imeiSV":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imeiSV = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1402
    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside sipUserAgent = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 1407
    .end local v3    # "imeiSV":Ljava/lang/String;
    .end local v8    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v18    # "support":Ljava/lang/String;
    .restart local v6    # "support":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v18, v6

    .end local v6    # "support":Ljava/lang/String;
    .restart local v18    # "support":Ljava/lang/String;
    goto :goto_5

    .line 1398
    .end local v18    # "support":Ljava/lang/String;
    .restart local v6    # "support":Ljava/lang/String;
    .restart local v8    # "deviceId":Ljava/lang/String;
    :cond_e
    move-object/from16 v18, v6

    .end local v6    # "support":Ljava/lang/String;
    .restart local v18    # "support":Ljava/lang/String;
    goto :goto_6

    .end local v17    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "support":Ljava/lang/String;
    .local v3, "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "support":Ljava/lang/String;
    :cond_f
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "support":Ljava/lang/String;
    .restart local v17    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "support":Ljava/lang/String;
    goto :goto_6

    .line 1407
    .end local v8    # "deviceId":Ljava/lang/String;
    .end local v17    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "support":Ljava/lang/String;
    .restart local v3    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "support":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 1408
    .end local v3    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "support":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "support":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 1396
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "support":Ljava/lang/String;
    .restart local v3    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "support":Ljava/lang/String;
    :cond_10
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 1409
    .end local v3    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "support":Ljava/lang/String;
    .restart local v17    # "supportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "support":Ljava/lang/String;
    :cond_11
    :goto_6
    nop

    .line 1411
    :goto_7
    iget-object v0, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v10, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->replaceEnablerPlaceholderWithEnablerVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1412
    .end local v10    # "sipUserAgent":Ljava/lang/String;
    .local v0, "sipUserAgent":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v3

    const-string v5, "[BUILD_VERSION]"

    const-string v6, "[OMCCODE]"

    if-nez v3, :cond_12

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v7, v3, :cond_13

    :cond_12
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-le v3, v8, :cond_13

    .line 1413
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1414
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 1415
    :cond_13
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v7}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_14
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x3

    if-le v3, v8, :cond_17

    .line 1417
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "3.0"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1418
    const-string/jumbo v3, "ril.sw_ver"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1419
    .local v3, "cpVer":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x3

    if-le v8, v10, :cond_15

    .line 1420
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1422
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v10, v16, -0x3

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .end local v3    # "cpVer":Ljava/lang/String;
    goto :goto_8

    .line 1424
    :cond_16
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x3

    sub-int/2addr v3, v8

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1426
    :cond_17
    if-eqz v12, :cond_18

    .line 1427
    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    :cond_18
    :goto_8
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v5, "unknown"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "[PRODUCT_MODEL]"

    if-eqz v3, :cond_19

    .line 1430
    const-string/jumbo v3, "ro.product.base_model"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1432
    :cond_19
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1433
    nop

    .line 1434
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v3

    .line 1433
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1436
    :cond_1a
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    :goto_9
    const-string v3, "[CLIENT_VERSION]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1440
    iget-object v5, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 1441
    const-string/jumbo v8, "rcs_client_version"

    const-string v10, "6.0"

    invoke-interface {v5, v2, v8, v10}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1440
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    :cond_1b
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1445
    const-string v3, "SKT"

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1446
    :cond_1c
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1447
    const-string v3, "KT"

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1448
    :cond_1d
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1449
    const-string v3, "LGU"

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1450
    :cond_1e
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1451
    :cond_1f
    const-string v3, "OMD"

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    :cond_20
    :goto_a
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1455
    const-string v3, "[UICC_VERSION]"

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1457
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildUserAgentString: isVoLteEnabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", sipUserAgent="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-object v0
.end method

.method public dump()V
    .locals 7

    .line 1501
    const-string v0, "RegiMgr"

    const-string v1, "Dump of RegistrationManager:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCF mode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v1, "RegisterTask(s) -"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1506
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1507
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM slot: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] state: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] IMS Profile: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1507
    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Governor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_1

    .line 1505
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    .end local v1    # "phoneId":I
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1513
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->dump()V

    .line 1516
    return-void
.end method

.method public forceNotifyToApp(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1778
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isRcsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    const-string v0, "RegiMgr"

    const-string v1, "forceNotifyToApp"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1780
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1781
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1782
    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1783
    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1786
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1788
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method getAresLookupRequired()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    return v0
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "service"    # Ljava/lang/String;

    .line 1313
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1314
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    .line 1315
    .local v2, "registrationEntry":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1316
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1318
    .end local v2    # "registrationEntry":Lcom/sec/ims/ImsRegistration;
    :cond_0
    goto :goto_1

    .line 1313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1321
    .end local v0    # "phoneId":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCmcLineSlotIndex()I
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result v0

    return v0
.end method

.method public getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 4
    .param p1, "phoneId"    # I

    .line 776
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "RegiMgr"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 777
    .local v1, "t":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v3, v1, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    const-string v0, "getRegistrationGovernor: return Emergency Gvn"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    return-object v0

    .line 781
    .end local v1    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 782
    :cond_1
    const-string v0, "getRegistrationGovernor: not found Emergency task"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 8
    .param p1, "phoneId"    # I

    .line 712
    const-string v0, "RegiMgr"

    const-string v1, "getEmergencyProfile:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 714
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 715
    return-object v1

    .line 717
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 718
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 747
    :cond_1
    const-string v3, "RegiMgr"

    const-string v4, "getEmergencyProfile: from SlotBasedConfig"

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 748
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 749
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 750
    const-string v4, "RegiMgr"

    const-string v5, "getEmergencyProfile: ProfileList is Empty"

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 751
    return-object v1

    .line 754
    :cond_2
    monitor-enter v3

    .line 755
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    .line 756
    .local v5, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 757
    const-string v1, "RegiMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEmergencyProfile: profile: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 758
    monitor-exit v3

    return-object v5

    .line 760
    .end local v5    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_3
    goto :goto_0

    .line 761
    :cond_4
    const-string v4, "RegiMgr"

    const-string v5, "getEmergencyProfile: no profile found"

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 762
    monitor-exit v3

    return-object v1

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 719
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_5
    :goto_1
    const-string v3, "RegiMgr"

    const-string v4, "getEmergencyProfile(no SIM): profile in case of no SIM or AU sales code"

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 721
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v3

    if-nez v3, :cond_6

    .line 722
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 724
    :cond_6
    invoke-static {v2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->handleExceptionalMnoName(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, "mnoName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 726
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 727
    .local v4, "auProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v4, :cond_7

    .line 728
    return-object v4

    .line 731
    .end local v4    # "auProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyProfile(no SIM): mno: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr"

    invoke-static {v5, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 732
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 734
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/settings/ImsProfile;

    .line 735
    .local v6, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 736
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 737
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 739
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyProfile(no SIM): profile: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "RegiMgr"

    invoke-static {v5, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    return-object v6

    .line 742
    .end local v6    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_9
    goto :goto_2

    .line 743
    :cond_a
    const-string v5, "RegiMgr"

    const-string v6, "getEmergencyProfile(no SIM): no profile found"

    invoke-static {v5, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 744
    return-object v1
.end method

.method getEmmCause()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    return v0
.end method

.method getEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object v0
.end method

.method public getHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 6
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHomeNetworkDomain(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 6
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPrivateUserIdentity(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;
    .locals 3
    .param p1, "phoneId"    # I

    .line 188
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    .line 189
    .local v0, "res":Lcom/sec/internal/ims/core/ImsIconManager;
    if-nez v0, :cond_0

    .line 190
    const-string v1, "RegiMgr"

    const-string v2, "getImsIconManager is not exist."

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    :cond_0
    return-object v0
.end method

.method public getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "profType"    # Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "rtn":Lcom/sec/ims/settings/ImsProfile;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsProfile: profile ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegiMgr"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 684
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$1;->$SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE:[I

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/ims/core/-$$Lambda$kmklNreFbxuYb5KlW6j7Qex0mVc;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$kmklNreFbxuYb5KlW6j7Qex0mVc;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 701
    goto :goto_0

    .line 696
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 697
    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;

    .line 691
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 692
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 693
    goto :goto_0

    .line 686
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 687
    nop

    .line 707
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsProfile: found ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v0

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] for ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 708
    return-object v0
.end method

.method public getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
    .locals 1
    .param p1, "ua"    # Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    .line 1773
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiByUserAgentHandle(I)Ljava/lang/String;
    .locals 1
    .param p1, "handle"    # I

    .line 1753
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getImsiByUserAgentHandle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "pdn"    # I
    .param p3, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1241
    const-string v0, ""

    .line 1242
    .local v0, "instanceId":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1243
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const-string v2, "RegiMgr"

    const/16 v3, 0xb

    if-eq p2, v3, :cond_2

    const/16 v3, 0xf

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_0

    .line 1244
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp24Profile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_2

    .line 1245
    :cond_1
    new-instance v3, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;-><init>(ILandroid/content/Context;)V

    .line 1246
    .local v3, "timeBasedUuidGenerator":Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;
    invoke-virtual {v3}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->getUuidInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 1247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstanceId time based uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    return-object v0

    .line 1250
    .end local v3    # "timeBasedUuidGenerator":Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstanceId by phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    return-object v0
.end method

.method protected getInterfaceName(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "currentPcscfIp"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 939
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "rcsAs":Ljava/lang/String;
    const-string v1, "jibe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {v1, p1, v2, p2}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->changeRcsIfacename(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IPdnController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ifacename":Ljava/lang/String;
    goto :goto_0

    .line 943
    .end local v1    # "ifacename":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/PdnController;->getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;

    move-result-object v1

    .line 947
    .restart local v1    # "ifacename":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 948
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 949
    .local v2, "cmcType":I
    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 952
    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 953
    const-string/jumbo v1, "swlan0"

    goto :goto_2

    .line 951
    :cond_2
    :goto_1
    const-string/jumbo v1, "p2p-wlan0-0"

    .line 956
    .end local v2    # "cmcType":I
    :cond_3
    :goto_2
    return-object v1
.end method

.method public getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 1
    .param p1, "phoneId"    # I

    .line 975
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-object v0
.end method

.method public getPendingRegistration(I)Ljava/util/List;
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 451
    .local v0, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    if-nez v0, :cond_0

    .line 452
    const-string v1, "RegiMgr"

    const-string v2, "getPendingRegistration : no task return null"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x0

    return-object v1

    .line 455
    :cond_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method protected getPreferredImpuOnPdn(II)Ljava/lang/String;
    .locals 2
    .param p1, "pdn"    # I
    .param p2, "phoneId"    # I

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredImpuOnPdn: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$oSnlGVnDfo5GG-U1xfOaan1m978;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$oSnlGVnDfo5GG-U1xfOaan1m978;-><init>(I)V

    .line 1327
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1328
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$dTmsvAx6w6gLvr7pxl8ostahz84;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$_9IspmiJbgZ5lo9huahE6Xzu2es;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$_9IspmiJbgZ5lo9huahE6Xzu2es;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1326
    return-object v0
.end method

.method public getPrivateUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/String;
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 924
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 925
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 926
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "impi":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->STARHUB:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    .line 928
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getUserName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 930
    :cond_1
    return-object v2
.end method

.method public getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 1
    .param p1, "phoneId"    # I

    .line 985
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    return-object v0
.end method

.method protected getPublicUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 10
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 854
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 855
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 856
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    const-string v2, ""

    .line 858
    .local v2, "impu":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNextImpuType()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "RegiMgr"

    if-ne v3, v4, :cond_0

    .line 859
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 860
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    const/16 v6, 0xb

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 861
    const-string/jumbo v3, "profile.hasEmergencySupport() && profile.isUicclessEmergency()"

    invoke-static {v5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getEmergencyImpu()Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 865
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 866
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_8

    .line 867
    invoke-virtual {p0, v6, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPreferredImpuOnPdn(II)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, "imsImpu":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 869
    move-object v2, v3

    .line 871
    .end local v3    # "imsImpu":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 872
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v3

    if-nez v3, :cond_7

    .line 873
    const-string/jumbo v3, "profile.hasEmergencySupport() && !profile.isUicclessEmergency()"

    invoke-static {v5, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 885
    invoke-virtual {p0, v6, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPreferredImpuOnPdn(II)Ljava/lang/String;

    move-result-object v3

    .line 886
    .restart local v3    # "imsImpu":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 887
    move-object v2, v3

    .line 890
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    aput-object v9, v7, v8

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    aput-object v8, v7, v4

    const/4 v4, 0x2

    sget-object v8, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    aput-object v8, v7, v4

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 893
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v4, v0}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->getRcsPublicUserIdentity(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v2

    .line 895
    .end local v3    # "imsImpu":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 896
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->getRcsPublicUserIdentity(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v2

    .line 899
    :cond_8
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "impu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 900
    return-object v2
.end method

.method protected getRegisterTask(I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 3
    .param p1, "profileId"    # I

    .line 805
    const-string v0, "RegiMgr"

    const-string v1, "getRegisterTask:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 807
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v2

    .line 808
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v2, :cond_0

    .line 809
    return-object v2

    .line 806
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v1    # "phoneId":I
    :cond_1
    const-string v1, "getRegisterTask: Not exist matched RegisterTask. Return null.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 3
    .param p1, "profileId"    # I
    .param p2, "phoneId"    # I

    .line 830
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 831
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 832
    return-object v1

    .line 834
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 835
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegisterTaskByProfileId: can not find profile id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 5
    .param p1, "handle"    # I

    .line 817
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 818
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 819
    .local v1, "list":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 820
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 821
    return-object v3

    .line 823
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_1

    .line 817
    .end local v1    # "list":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    .end local v0    # "phoneId":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegisterTaskByRegHandle: can not find handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 3
    .param p1, "handle"    # I

    .line 788
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 789
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-nez v0, :cond_0

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegistrationGovernor: unknown handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v1, 0x0

    return-object v1

    .line 793
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    return-object v1
.end method

.method public getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 1
    .param p1, "profileId"    # I
    .param p2, "phoneId"    # I

    .line 798
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;
    .locals 2
    .param p1, "profileId"    # I

    .line 962
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    .line 963
    .local v0, "phoneId":I
    const/16 v1, 0x4e20

    if-lt p1, v1, :cond_0

    .line 964
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    goto :goto_0

    .line 965
    :cond_0
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_1

    .line 966
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_0

    .line 967
    :cond_1
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_2

    .line 968
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 970
    :cond_2
    :goto_0
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfo(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    return-object v1
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 7

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/ImsRegistration;>;"
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 462
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/ImsRegistration;

    .line 463
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-nez v3, :cond_1

    .line 464
    goto :goto_1

    .line 468
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v4

    .line 469
    .local v4, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v5, v6, :cond_2

    .line 470
    goto :goto_1

    .line 473
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v4    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    goto :goto_1

    .line 461
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "phoneId":I
    :cond_4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sec/ims/ImsRegistration;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/ImsRegistration;

    return-object v1
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p1, "phoneId"    # I

    .line 980
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfoByPhoneId(I[Lcom/sec/ims/ImsRegistration;)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
    .locals 7
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 482
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 483
    .local v1, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_a

    .line 484
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 486
    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_a

    .line 495
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v2

    .line 496
    .local v2, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v3, v4, :cond_3

    .line 497
    goto :goto_0

    .line 500
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 501
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 502
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v0

    .line 504
    .local v0, "updatedServiceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 505
    return-object v1

    .line 508
    :cond_4
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 509
    .local v4, "imsService":Ljava/lang/String;
    const-string v5, "mmtel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 510
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    .line 511
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_6

    .line 512
    :cond_5
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v5, :cond_7

    .line 513
    :cond_6
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    .end local v4    # "imsService":Ljava/lang/String;
    :cond_7
    goto :goto_1

    .line 517
    :cond_8
    new-instance v3, Lcom/sec/ims/ImsRegistration;

    invoke-direct {v3, v1, v0}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration;Ljava/util/Set;)V

    return-object v3

    .line 519
    .end local v0    # "updatedServiceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    return-object v1

    .line 524
    .end local v1    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v2    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_a
    goto/16 :goto_0

    .line 526
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegistrationList()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation

    .line 1066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1067
    .local v0, "registrationList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1068
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    .end local v1    # "phoneId":I
    :cond_0
    return-object v0
.end method

.method getRegistrationManagerHandler()Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-object v0
.end method

.method public getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;
    .locals 6
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "network"    # I
    .param p3, "isRcsForEur"    # Z
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile;",
            "IZI)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceForNetwork: network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1172
    invoke-static {p2}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result p2

    .line 1174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1175
    .local v0, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v2

    .line 1176
    .local v2, "networkList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1177
    return-object v0

    .line 1180
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 1181
    if-eqz p3, :cond_1

    .line 1182
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v0

    .line 1185
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceForNetwork: service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1188
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1189
    return-object v0

    .line 1192
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-virtual {p0, v3, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v3

    .line 1193
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v3, :cond_4

    .line 1194
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->clearFilteredReason()V

    .line 1195
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4, v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 1196
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->filterserviceFbe(Landroid/content/Context;Ljava/util/Set;Lcom/sec/ims/settings/ImsProfile;)Ljava/util/Set;

    move-result-object v0

    .line 1198
    if-nez v0, :cond_3

    .line 1199
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, v4

    .line 1201
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServiceForNetwork: filtered service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p4, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1203
    :cond_4
    return-object v0
.end method

.method public getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 3
    .param p1, "simSlot"    # I

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTelephonyCallStatus(I)I
    .locals 8
    .param p1, "phoneId"    # I

    .line 1128
    const-string v0, "RegiMgr"

    const-string v1, "getTelephonyCallStatus:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1129
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 1130
    .local v1, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v1, :cond_0

    .line 1131
    const/4 v0, -0x1

    return v0

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1135
    .local v2, "hasImsCall":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTelephonyCallStatus: hasImsCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1137
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1138
    .local v5, "t":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v6, v5, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1139
    return v3

    .line 1141
    :cond_2
    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 1142
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 1143
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ims"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v6, v7, :cond_3

    .line 1144
    const-string v4, "getTelephonyCallStatus: Have No normal IMS/CS call => allow VoWifi registration."

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1145
    return v3

    .line 1147
    .end local v5    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    goto :goto_1

    .line 1148
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "handle"    # I

    .line 1733
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 1768
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1738
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 1748
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;

    .line 1758
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "regId"    # I

    .line 1743
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "pdn"    # I
    .param p2, "phoneId"    # I

    .line 1763
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method protected getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1213
    const-string v0, "RegiMgr"

    const-string v1, "getUuid:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1215
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isEnableSessionId()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1216
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, "uuid":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return-object v1

    .line 1221
    .end local v1    # "uuid":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method getVolteAllowedWithDsac()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    return v0
.end method

.method public hasOmaDmFinished()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVoLteSim(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 1062
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVoLteSim(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Z

    move-result v0

    return v0
.end method

.method isAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 229
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCdmaAvailableForVoice(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 237
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isCdmaAvailableForVoice()Z

    move-result v0

    return v0
.end method

.method public isCmcRegistered(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 1110
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1111
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 1113
    .local v2, "cmcType":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1114
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_1

    .line 1115
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    return v0

    .line 1117
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v2    # "cmcType":I
    :cond_1
    goto :goto_0

    .line 1118
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isEmergencyCallProhibited(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 1074
    const-string v0, "RegiMgr"

    const-string v1, "isEmergencyCallProhibited:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1076
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1077
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 1079
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isPse911Prohibited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    const/4 v0, 0x1

    return v0

    .line 1084
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 1085
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEpdnRequestPending(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 1090
    const-string v0, "RegiMgr"

    const-string v1, "isEpdnRequestPending:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1092
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1093
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_0

    .line 1095
    const/4 v0, 0x1

    return v0

    .line 1098
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 1099
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInvite403DisabledService(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 225
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isInviteRejected()Z

    move-result v0

    return v0
.end method

.method public isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 5
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 1045
    const/4 v0, 0x0

    const-string v1, "RegiMgr"

    if-nez p1, :cond_0

    .line 1046
    const-string v2, "isPdnConnected: profile not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return v0

    .line 1050
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v2

    .line 1051
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-nez v2, :cond_1

    .line 1052
    const-string v3, "isPdnConnected: task not found."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return v0

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    .line 1057
    .local v0, "isPdnConnected":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPdnConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", PdnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return v0
.end method

.method public isRcsRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1104
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isRcsRegistered(I[Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    return v0
.end method

.method public isVoWiFiSupported(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "hasMmtelOnWiFi":Z
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1034
    .local v5, "profile":Lcom/sec/ims/settings/ImsProfile;
    const-string v6, "mmtel"

    const/16 v7, 0x12

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1035
    const-string v6, "mmtel-video"

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1033
    .end local v5    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1036
    .restart local v5    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 1037
    nop

    .line 1041
    .end local v5    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v2, "support_vowifi"

    invoke-interface {v1, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method protected logTask()V
    .locals 9

    .line 1466
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegisterTask(s): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v1, "taskInfo":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    .line 1470
    .local v2, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1471
    const-string v3, "Nothing!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1473
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1474
    .local v4, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1475
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v6, v7

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1476
    const-string v6, ", rat = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", service = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;

    .line 1478
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$CrPRuRICJfUpzGfdpT9eJ-5q5dQ;

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1477
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    :cond_1
    const-string v5, "), "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    .end local v4    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    goto :goto_1

    .line 1483
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ", $"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr"

    invoke-static {v4, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1466
    .end local v1    # "taskInfo":Ljava/lang/StringBuilder;
    .end local v2    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1486
    .end local v0    # "phoneId":I
    :cond_3
    return-void
.end method

.method protected declared-synchronized notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 6
    .param p1, "registration"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p4, "error"    # Lcom/sec/ims/ImsRegistrationError;

    monitor-enter p0

    .line 351
    :try_start_0
    const-string v0, "RegiMgr"

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyImsRegistration(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    invoke-direct {p0, p2, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsP2pRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V

    .line 356
    invoke-direct {p0, p2, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyCmcRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 361
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 363
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 366
    add-int/lit8 v1, v1, -0x1

    .line 368
    if-eqz p2, :cond_0

    .line 369
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v2, p1}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_1

    .line 371
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v2, p1, p4}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 375
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 377
    :cond_1
    const-string v2, "RegiMgr"

    const-string v3, "notify mRegistrationList, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 385
    .end local v0    # "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->needToNotifyImsPhoneRegistration(Lcom/sec/ims/ImsRegistration;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4}, Lcom/sec/internal/interfaces/google/IImsNotifier;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->handleRegistrationEvent(Lcom/sec/ims/ImsRegistration;Z)V

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 394
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_6

    .line 395
    const/4 v1, 0x0

    sget v2, Lcom/sec/ims/extensions/WiFiManagerExt;->SEC_COMMAND_ID_SET_MAX_DTIM_IN_SUSPEND:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 399
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v2, "args":Landroid/os/Bundle;
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "mmtel"

    .line 401
    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "mmtel-video"

    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 402
    :cond_4
    const-string v3, "enable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 404
    :cond_5
    const-string v3, "enable"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    :goto_2
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    invoke-static {v0, v1}, Lcom/sec/ims/extensions/WiFiManagerExt;->callSECApi(Landroid/net/wifi/WifiManager;Landroid/os/Message;)I

    .line 408
    const-string v3, "RegiMgr"

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    const-string v5, "Notify to WiFiManager"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_6
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setImsRegistrationState(I)V

    .line 416
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "REGISTERED"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SERVICE"

    .line 418
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "VOWIFI"

    .line 419
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SIP_ERROR"

    .line 420
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PHONE_ID"

    .line 421
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ERROR_REASON"

    .line 422
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 350
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local p1    # "registration":Lcom/sec/ims/ImsRegistration;
    .end local p2    # "registered":Z
    .end local p3    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .end local p4    # "error":Lcom/sec/ims/ImsRegistrationError;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyRCSAllowedChangedbyMDM()V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1167
    return-void
.end method

.method public notifyRomaingSettingsChanged(II)V
    .locals 3
    .param p1, "roamingSettingsOn"    # I
    .param p2, "phoneId"    # I

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1162
    return-void
.end method

.method protected notifySimMobilityStatusChanged(ILcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 533
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result v0

    .line 534
    .local v0, "newSimMobility":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimMobilityStatusChanged: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], new ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    const-string v2, "RegiMgr"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 541
    const/4 v1, 0x0

    .line 543
    .local v1, "status":I
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    const/4 v1, 0x1

    .line 547
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 548
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/Mno;->SAMSUNG:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    const/4 v1, 0x2

    .line 552
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 553
    const/4 v1, 0x4

    .line 556
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v4, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "overwrite_mode"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SMMO"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v6, "DRPT"

    invoke-static {p1, v5, v6, v4}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 561
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifySimMobilityStatusChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 562
    const v5, 0x11010008

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",SIMMO:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 564
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object v5

    .line 565
    .local v5, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ISimMobilityStatusListener;>;"
    if-eqz v5, :cond_4

    .line 566
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 568
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/ISimMobilityStatusListener;

    invoke-interface {v7, v0}, Lcom/sec/ims/ISimMobilityStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    goto :goto_1

    .line 569
    :catch_0
    move-exception v7

    .line 570
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 566
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 573
    .end local v6    # "i":I
    :cond_3
    const-string v6, "notify SimMobilityStatusChanged, finish"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 576
    :cond_4
    return-void
.end method

.method public onDmConfigurationComplete()V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 769
    return-void
.end method

.method public declared-synchronized registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 617
    if-nez p1, :cond_0

    .line 618
    :try_start_0
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "registerCmcRegiListener: listener is null.."

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    .line 622
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 623
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    if-nez v0, :cond_1

    .line 624
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 625
    .local v1, "newrcl":Landroid/os/RemoteCallbackList;
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 626
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setCmcRegistrationListeners(Landroid/os/RemoteCallbackList;)V

    .line 627
    .end local v1    # "newrcl":Landroid/os/RemoteCallbackList;
    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 631
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .local v2, "registration":Lcom/sec/ims/ImsRegistration;
    :try_start_2
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 634
    invoke-interface {p1, v2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    :cond_2
    goto :goto_2

    .line 636
    :catch_0
    move-exception v3

    .line 637
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 639
    .end local v2    # "registration":Lcom/sec/ims/ImsRegistration;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 640
    :cond_3
    monitor-exit p0

    return-void

    .line 616
    .end local v0    # "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 284
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 283
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 4
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "broadcast"    # Z
    .param p3, "phoneId"    # I

    monitor-enter p0

    .line 289
    if-nez p1, :cond_0

    .line 290
    :try_start_0
    const-string v0, "RegiMgr"

    const-string v1, "listener is null.."

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 294
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 295
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    if-nez v0, :cond_1

    .line 296
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 297
    .local v1, "newrcl":Landroid/os/RemoteCallbackList;
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 298
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setImsRegistrationListeners(Landroid/os/RemoteCallbackList;)V

    .line 299
    .end local v1    # "newrcl":Landroid/os/RemoteCallbackList;
    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 303
    :goto_0
    if-eqz p2, :cond_3

    .line 304
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .local v2, "registration":Lcom/sec/ims/ImsRegistration;
    :try_start_2
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-ne v3, p3, :cond_2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 307
    invoke-interface {p1, v2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :cond_2
    goto :goto_2

    .line 309
    :catch_0
    move-exception v3

    .line 310
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    .end local v2    # "registration":Lcom/sec/ims/ImsRegistration;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 314
    :cond_3
    monitor-exit p0

    return-void

    .line 288
    .end local v0    # "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    .end local p2    # "broadcast":Z
    .end local p3    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;

    monitor-enter p0

    .line 329
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 330
    const-string v0, "RegiMgr"

    const-string/jumbo v1, "registerP2pListener done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 328
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 579
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    monitor-exit p0

    return-void

    .line 578
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    .end local p1    # "listener":Lcom/sec/ims/ISimMobilityStatusListener;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "broadcast"    # Z
    .param p3, "phoneId"    # I

    monitor-enter p0

    .line 583
    if-nez p1, :cond_0

    .line 584
    :try_start_0
    const-string v0, "RegiMgr"

    const-string v1, "listener is null.."

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 588
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 589
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ISimMobilityStatusListener;>;"
    if-nez v0, :cond_1

    .line 590
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 591
    .local v1, "newrcl":Landroid/os/RemoteCallbackList;
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 592
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setSimMobilityStatusListeners(Landroid/os/RemoteCallbackList;)V

    .line 593
    .end local v1    # "newrcl":Landroid/os/RemoteCallbackList;
    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    :goto_0
    if-eqz p2, :cond_2

    .line 599
    :try_start_2
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/ims/ISimMobilityStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    goto :goto_1

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 582
    .end local v0    # "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ISimMobilityStatusListener;>;"
    .end local p1    # "listener":Lcom/sec/ims/ISimMobilityStatusListener;
    .end local p2    # "broadcast":Z
    .end local p3    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseThrottleByAcs(I)V
    .locals 3
    .param p1, "slot"    # I

    .line 997
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 998
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1000
    goto :goto_1

    .line 1002
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 1004
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1005
    return-void
.end method

.method public releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1009
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "RegiMgr"

    const-string/jumbo v2, "releaseThrottleByCmc: releaseThrottle"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1011
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1013
    :cond_0
    return-void
.end method

.method protected reportDualImsStatus(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1714
    const/4 v0, 0x0

    .line 1715
    .local v0, "status":I
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    const/4 v0, 0x1

    .line 1717
    rsub-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1718
    const/4 v0, 0x2

    .line 1722
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1723
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "overwrite_mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DIMS"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1726
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v3, "DRPT"

    invoke-static {p1, v2, v3, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportDualImsStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1728
    return-void
.end method

.method protected reportRcsChatRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1612
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1613
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1614
    .local v0, "drcs":Landroid/content/ContentValues;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    .line 1620
    .local v1, "phoneId":I
    const/4 v2, 0x0

    .line 1623
    .local v2, "rcsRegState":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_1

    .line 1624
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1625
    .local v3, "checkRcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1626
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1627
    const/4 v2, 0x2

    goto :goto_0

    .line 1628
    :cond_0
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1629
    const/4 v2, 0x1

    .line 1633
    .end local v3    # "checkRcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "send_mode"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1634
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "overwrite_mode"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1635
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "RCRS"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1636
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "DRCS"

    invoke-static {v1, v3, v4, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportRcsRegiStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1639
    .end local v0    # "drcs":Landroid/content/ContentValues;
    .end local v1    # "phoneId":I
    .end local v2    # "rcsRegState":I
    :cond_2
    return-void
.end method

.method protected reportRegistrationCount(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 10
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1652
    .local v0, "key":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    .line 1653
    .local v2, "pdnType":I
    const/4 v3, -0x1

    const-string v4, "] - ignore!"

    const-string v5, "RegiMgr"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    if-eq v2, v6, :cond_1

    const/16 v1, 0xb

    if-eq v2, v1, :cond_0

    .line 1665
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportRegistrationCount: PDN type ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1666
    return-void

    .line 1655
    :cond_0
    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    goto :goto_0

    .line 1661
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    nop

    .line 1674
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v3, :cond_2

    .line 1675
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1677
    :cond_2
    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    :goto_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    .line 1687
    .local v1, "rat":I
    invoke-static {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v3

    .line 1688
    .local v3, "networkClass":I
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    .line 1689
    const/16 v4, 0x12

    if-ne v1, v4, :cond_3

    .line 1690
    const-string v4, "W"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1692
    :cond_3
    const-string v4, "4"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1694
    :cond_4
    const/4 v7, 0x2

    if-eq v3, v7, :cond_6

    if-ne v3, v6, :cond_5

    goto :goto_2

    .line 1697
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reportRegistrationCount: rat ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v7, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 1695
    :cond_6
    :goto_2
    const-string v4, "L"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    :goto_3
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants;->sRegiCountKey:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1701
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1702
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "overwrite_mode"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1703
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1705
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportRegistrationCount: key ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1706
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v7, "DRPT"

    invoke-static {v5, v6, v7, v4}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1708
    .end local v4    # "cv":Landroid/content/ContentValues;
    :cond_7
    return-void
.end method

.method protected reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 10
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1522
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1523
    .local v0, "phoneId":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1536
    .local v1, "cv":Landroid/content/ContentValues;
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    .line 1537
    .local v2, "failReason":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getLastRegiFailReason()I

    move-result v3

    .line 1538
    .local v3, "lastFailReason":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1540
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v4

    .line 1541
    .local v4, "error":Lcom/sec/ims/util/SipError;
    if-eqz v4, :cond_0

    .line 1542
    invoke-virtual {v4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    .line 1545
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    .line 1546
    .local v5, "rat":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 1549
    .local v6, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$-vp9VQZqovRDuKML0z61D-dV3B8;

    .line 1550
    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 1552
    .local v7, "registeredSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    if-ne v2, v8, :cond_2

    .line 1555
    if-eq v2, v3, :cond_1

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK_AFTER_FAIL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    if-eq v3, v8, :cond_1

    .line 1556
    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK_AFTER_FAIL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    .line 1559
    :cond_1
    const-string v8, "mmtel"

    invoke-virtual {v6, v8, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1560
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v2

    goto :goto_1

    .line 1562
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v8, v9, :cond_4

    .line 1563
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v8

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OFFSET_DEREGI_REASON:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1567
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FALC"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1572
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v2

    .line 1576
    :goto_0
    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-interface {p1, v8}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiFailReason(I)V

    .line 1579
    :cond_4
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "DRAT"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1580
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SVCA"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1582
    invoke-static {v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SVCR"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPani()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getPaniPrefix(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "PNPR"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1585
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getPdnType(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "PDTY"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1586
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getPcscfOrdinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "PCOD"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    nop

    .line 1588
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/core/PdnController;->isDataRoaming(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1587
    const-string v9, "ROAM"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1589
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v8, :cond_6

    .line 1590
    const/4 v9, 0x0

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSignalLevel()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "SIGS"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1592
    .end local v4    # "error":Lcom/sec/ims/util/SipError;
    .end local v5    # "rat":I
    .end local v6    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v7    # "registeredSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    goto :goto_2

    .line 1594
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v2

    .line 1598
    :goto_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "REQC"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1599
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FRSN"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportRegiStatus: reason ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], prev ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr"

    invoke-static {v5, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1602
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    if-le v2, v4, :cond_8

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    if-eq v2, v4, :cond_8

    .line 1603
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v5, "REGI"

    invoke-static {v0, v4, v5, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1606
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRcsChatRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1608
    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setLastRegiFailReason(I)V

    .line 1609
    return-void
.end method

.method public requestTryRegister(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 846
    return-void
.end method

.method public requestTryRegsiter(IJ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "delay"    # J

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 851
    return-void
.end method

.method resetNotifiedImsNotAvailable(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 244
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 245
    return-void
.end method

.method setAresLookupRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .line 252
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    .line 253
    return-void
.end method

.method protected setCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .line 272
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCallState:I

    .line 273
    return-void
.end method

.method setCdmaAvailableForVoice(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "value"    # Z

    .line 268
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setCdmaAvailableForVoice(Z)V

    .line 269
    return-void
.end method

.method public setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 1
    .param p1, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 162
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/UserEventController;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 165
    return-void
.end method

.method setEmmCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 256
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    .line 257
    return-void
.end method

.method public setGeolocationController(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0
    .param p1, "glc"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 176
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    .line 177
    return-void
.end method

.method protected setImsRegistrationState(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "hasRegisteredTask":Z
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 430
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 439
    goto :goto_1

    .line 441
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsRegistrationState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 443
    const v1, 0x11020004

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",PDN_DEACT_DELAY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->setImsRegistrationState(IZ)V

    .line 446
    return-void
.end method

.method public setInvite403DisableService(ZI)V
    .locals 1
    .param p1, "disableService"    # Z
    .param p2, "phoneId"    # I

    .line 260
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setInviteReject(Z)V

    .line 261
    return-void
.end method

.method public setNonDDSDeRegRequired(Z)V
    .locals 0
    .param p1, "nonDDSDeRegRequired"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonDDSDeRegRequired:Z

    .line 277
    return-void
.end method

.method setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 0
    .param p1, "state"    # Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    .line 248
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    .line 249
    return-void
.end method

.method public setSSACPolicy(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 1153
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    .line 1154
    if-nez p2, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x79

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1157
    :cond_0
    return-void
.end method

.method public setStackInterface(Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;)V
    .locals 2
    .param p1, "regStackIf"    # Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    .line 168
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setEventLog(Lcom/sec/internal/helper/SimpleEventLog;)V

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setRegistrationHandler(Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setSimManagers(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setPdnController(Lcom/sec/internal/interfaces/ims/core/IPdnController;)V

    .line 173
    return-void
.end method

.method setVolteAllowedWithDsac(Z)V
    .locals 0
    .param p1, "IsVolteAllowedWithDac"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    .line 265
    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 1
    .param p1, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 156
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/UserEventController;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 159
    return-void
.end method

.method public declared-synchronized unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 644
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    if-nez v0, :cond_0

    .line 646
    monitor-exit p0

    return-void

    .line 649
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    monitor-exit p0

    return-void

    .line 643
    .end local v0    # "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    if-nez v0, :cond_0

    .line 320
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 317
    .end local v0    # "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 608
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .local v0, "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ISimMobilityStatusListener;>;"
    if-nez v0, :cond_0

    .line 610
    monitor-exit p0

    return-void

    .line 612
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    .line 607
    .end local v0    # "rcl":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ISimMobilityStatusListener;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/core/RegistrationManager;
    .end local p1    # "listener":Lcom/sec/ims/ISimMobilityStatusListener;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateChatService(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1022
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1023
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1024
    return-void
.end method

.method protected updatePani(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 1489
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1490
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1491
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1492
    goto :goto_0

    .line 1495
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1496
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1497
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 1498
    :cond_1
    return-void
.end method

.method public updatePcoInfo(ILjava/lang/String;I)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "pdn"    # Ljava/lang/String;
    .param p3, "pcoValue"    # I

    .line 1028
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x2bf

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1029
    return-void
.end method

.method protected updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "config"    # Z

    .line 1462
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 1463
    return-void
.end method

.method protected validateImpu(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)Z
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "impu"    # Ljava/lang/String;

    .line 904
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 905
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 907
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 908
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 909
    const-string v2, "RegiMgr"

    const-string v3, "error : invalid IMPU"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 910
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "registerInternal : error - invalid IMPU"

    invoke-virtual {v2, v0, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 911
    const/high16 v2, 0x11020000

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",REG FAIL:INVALD IMPU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 912
    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 913
    const/4 v2, 0x0

    return v2

    .line 916
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
