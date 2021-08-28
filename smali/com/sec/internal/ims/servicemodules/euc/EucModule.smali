.class public Lcom/sec/internal/ims/servicemodules/euc/EucModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "EucModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucModule;


# static fields
.field private static final DEFAULT_EUC_PHONE_ID:I

.field private static final EVENT_CONFIGURED:I = 0xf

.field private static final EVENT_DDS_CHANGED:I = 0x17

.field private static final EVENT_DEREGISTERED:I = 0x11

.field private static final EVENT_INIT:I = 0xb

.field private static final EVENT_REGISTERED:I = 0x10

.field private static final EVENT_SERVICE_SWITCHED:I = 0xe

.field private static final EVENT_SIM_READY:I = 0x15

.field private static final EVENT_SIM_REFRESH:I = 0x16

.field private static final EVENT_START:I = 0xc

.field private static final EVENT_STOP:I = 0xd

.field private static final EXPECTED_NUMBER_OF_SIM_SLOTS:I = 0x2

.field private static final LOG_STRING_OWN_IDENTITY:Ljava/lang/String; = ", ownIdentity = "

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final LOG_TEST_REQUEST_FAILURE:Ljava/lang/String; = "Failure, test request is invalid, skipping "

.field private static final sRequiredServices:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

.field private final mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

.field private final mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

.field private mEucPhoneId:I

.field private final mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

.field private final mEucServiceSwitches:Landroid/util/SparseBooleanArray;

.field private mLanguageCode:Ljava/lang/String;

.field private final mLoadedEucrs:Landroid/util/SparseBooleanArray;

.field private final mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

.field private final mOwnIdentitiesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

.field private mServiceModuleBaseStartCalled:Z

.field private final mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

.field private mStartInternalCalled:Z

.field private final mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

.field private final mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

.field private final mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

.field private final mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    .line 82
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    sput v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->DEFAULT_EUC_PHONE_ID:I

    .line 99
    const-string v0, "euc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;)V
    .locals 13
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eucServiceInterface"    # Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    .line 138
    move-object v7, p0

    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 139
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v8

    .line 141
    .local v8, "handlerFactory":Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    const/4 v0, 0x1

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    const-string v2, "Could not obtain handler factory!"

    invoke-static {v1, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 143
    move-object/from16 v10, p3

    iput-object v10, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    .line 144
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;-><init>()V

    iput-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 145
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;

    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    iput-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->getInstance()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    move-result-object v1

    iput-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    .line 147
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    const-string v1, "Could not obtain User Consent persistence notifier!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 149
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;

    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    .line 151
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    .line 152
    const-string v0, "def"

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLanguageCode:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    .line 154
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    move-object v11, p1

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;Landroid/os/Looper;)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    .line 155
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iget-object v4, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    .line 157
    new-instance v12, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v4, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v5, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    move-object v0, v12

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    iput-object v12, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    .line 159
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    iget-object v4, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    .line 161
    sget v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->DEFAULT_EUC_PHONE_ID:I

    iput v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    .line 162
    iput-boolean v9, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    .line 163
    iput-boolean v9, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    .line 164
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    .line 165
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, v7, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    .line 168
    return-void
.end method

.method private checkConditionsForInternalStart()Z
    .locals 6

    .line 933
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 934
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isAtLeastOneSimAvailableAndSwitchedOn()Z

    move-result v0

    .local v0, "couldBeStarted":Z
    goto :goto_0

    .line 937
    .end local v0    # "couldBeStarted":Z
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 941
    .restart local v0    # "couldBeStarted":Z
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConditionsForInternalStart: mStartInternalCalled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", couldBeStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private checkConditionsForInternalStop()Z
    .locals 6

    .line 951
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 952
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isAtLeastOneSimAvailableAndSwitchedOn()Z

    move-result v0

    xor-int/2addr v0, v2

    .local v0, "couldBeStopped":Z
    goto :goto_1

    .line 954
    .end local v0    # "couldBeStopped":Z
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 958
    .restart local v0    # "couldBeStopped":Z
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConditionsForInternalStop: mStartInternalCalled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", couldBeStopped="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private discardEucrs(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 799
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discardEucrs, ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->discard(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->discard(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->discard(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method private discardEucrsConditionally(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 775
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discardEucrsConditionally, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "ownIdentity":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 780
    .local v1, "isLoaded":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownIdentity = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isLoaded="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 786
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrs(Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 789
    :cond_0
    return-void
.end method

.method private dumpExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 279
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 283
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method private getEucPhoneId()I
    .locals 4

    .line 1045
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigDualIMS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    sget v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->DEFAULT_EUC_PHONE_ID:I

    .line 1048
    .local v0, "phoneId":I
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1049
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSDS_SI_DDS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 1053
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Euc phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return v0
.end method

.method private getOwnIdentity(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 842
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 844
    .local v0, "ownIdentity":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 845
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentityNotCached(I)Ljava/lang/String;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_0

    .line 847
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 851
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOwnIdentity, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-object v0
.end method

.method private getOwnIdentityNotCached(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .line 813
    const/4 v0, 0x0

    .line 815
    .local v0, "ownIdentity":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 817
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_0

    .line 818
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 820
    const/4 v0, 0x0

    goto :goto_0

    .line 823
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOwnIdentityNotCached, Unable to find sim manager related to phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOwnIdentityNotCached, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-object v0
.end method

.method private handleConfigured(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 625
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigured, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEucPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method private handleDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 523
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 525
    .local v0, "phoneId":I
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeregistered, ignoring de-registration for phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 526
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "handleDeregistered, phoneId = "

    if-eqz v1, :cond_3

    .line 527
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "ownIdentity":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 530
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->store(Ljava/lang/String;)V

    goto :goto_1

    .line 532
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain own identity, ignore de-registration for phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v1    # "ownIdentity":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 537
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", no registration for required services = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    .line 538
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ignore!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_2
    return-void
.end method

.method private handleEucPhoneIdChanged()V
    .locals 5

    .line 716
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEucPhoneIdChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Shall not happen!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 720
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getEucPhoneId()I

    move-result v0

    .line 722
    .local v0, "newEucPhoneId":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 724
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrsConditionally(I)V

    .line 727
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    .line 729
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    .line 730
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 732
    .local v1, "couldBeStarted":Z
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEucPhoneIdChanged, newEucPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", couldBeStarted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mStartInternalCalled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 737
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    goto :goto_1

    .line 738
    :cond_1
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v2, :cond_2

    .line 739
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopInternal()V

    goto :goto_1

    .line 740
    :cond_2
    if-eqz v1, :cond_3

    .line 741
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startInternal()V

    .line 744
    .end local v1    # "couldBeStarted":Z
    :cond_3
    :goto_1
    return-void
.end method

.method private handleEucTestIncomingRequest(ILjava/lang/Object;)V
    .locals 3
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 265
    .local p2, "request":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    .line 266
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 268
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure, test request is invalid, skipping request id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void
.end method

.method private handleEucTestSendResponse(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createEucData(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 243
    .local v0, "data":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    if-eqz v0, :cond_1

    .line 244
    const-string/jumbo v1, "user_pin"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "pin":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "user_accept"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    move-object v5, v1

    goto :goto_0

    .line 246
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    move-object v5, v1

    :goto_0
    nop

    .line 248
    .local v5, "response":Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    new-instance v8, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$H9Zi-RrdYl17fTadAcVVBIY20qk;

    .local v8, "callback":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    invoke-direct {v8, v0}, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$H9Zi-RrdYl17fTadAcVVBIY20qk;-><init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 252
    new-instance v9, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$1X0suwWZSx91Cio2_Yu8Pa5lrzI;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$1X0suwWZSx91Cio2_Yu8Pa5lrzI;-><init>(Lcom/sec/internal/ims/servicemodules/euc/EucModule;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->post(Ljava/lang/Runnable;)Z

    .line 259
    .end local v5    # "response":Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .end local v7    # "pin":Ljava/lang/String;
    .end local v8    # "callback":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    goto :goto_1

    .line 260
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failure, test request is invalid, skipping com.sec.internal.ims.servicemodules.euc.test.action.SEND_EUCR_RESPONSE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_1
    return-void
.end method

.method private handleIncomingAckMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)V
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    .line 434
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingAckMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object v0

    .line 436
    .local v0, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 437
    return-void
.end method

.method private handleIncomingAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V
    .locals 4
    .param p1, "userConsentData"    # Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    .line 471
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingAutoconfUserConsent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-nez v0, :cond_0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->open()V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure, unable to open persistence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Abandoning configuration consent!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void

    .line 484
    .end local v0    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 487
    goto :goto_1

    .line 485
    :catch_1
    move-exception v0

    .line 486
    .restart local v0    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store User Consent in persistence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->close()V

    .line 492
    :cond_1
    return-void
.end method

.method private handleIncomingNotificationMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)V
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    .line 440
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingNotificationMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object v0

    .line 442
    .local v0, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 443
    return-void
.end method

.method private handleIncomingPersistentMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    .line 422
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingPersistentMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object v0

    .line 424
    .local v0, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 425
    return-void
.end method

.method private handleIncomingSystemMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    .line 446
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingSystemMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getMessageData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->RECONFIGURE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 456
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 457
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 455
    const-string v3, "euc"

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->onNewRcsConfigurationNeeded(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 460
    :cond_0
    return-void
.end method

.method private handleIncomingVolatileMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingVolatileMessage, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object v0

    .line 430
    .local v0, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 431
    return-void
.end method

.method private handleInit()V
    .locals 3

    .line 631
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInit, isMultiSimIms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getEucPhoneId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    .line 634
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->initiateServiceSwitches()V

    .line 635
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->registerForSimEvents()V

    .line 636
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->initiateSimAvailabilityStatuses()V

    .line 637
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->notifyOnInit()V

    .line 638
    return-void
.end method

.method private handleReconfigurationResponse(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;I)V
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    .param p2, "response"    # I

    .line 463
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReconfigurationResponse, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ownIdentity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 467
    const-string v2, "accepted"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "rejected"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method private handleRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 496
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 498
    .local v0, "phoneId":I
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRegistered, ignoring registration for phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 499
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "handleRegistered, phoneId = "

    if-eqz v1, :cond_3

    .line 500
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "ownIdentity":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 503
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->forward(Ljava/lang/String;)V

    goto :goto_1

    .line 505
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain own identity, ignore registration for phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v1    # "ownIdentity":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 510
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", no registration for required services = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    .line 511
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ignore!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_2
    return-void
.end method

.method private handleServiceSwitched(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 691
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucSwitchedOn(I)Z

    move-result v0

    .line 692
    .local v0, "isEucOn":Z
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceSwitched, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isEucOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 696
    if-eqz v0, :cond_1

    .line 697
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startConditionally()V

    .line 700
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v1, :cond_4

    .line 702
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    goto :goto_0

    .line 707
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v1, :cond_3

    .line 708
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrsConditionally(I)V

    .line 711
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopConditionally()V

    .line 713
    :cond_4
    :goto_0
    return-void
.end method

.method private handleSimAvailability(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "isSimAvailable"    # Z

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 568
    if-eqz p2, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startConditionally()V

    .line 570
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimAvailable(I)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopConditionally()V

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(I)V

    .line 576
    return-void
.end method

.method private handleSimAvailable(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 580
    const-string v0, "handleSimAvailable"

    .line 581
    .local v0, "LOG_MSG_METHOD":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "LOG_MSG_PHONE_ID":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "oldOwnIdentity":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->invalidateOwnIdentity(I)V

    .line 589
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    .local v4, "newOwnIdentity":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSimAvailable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", oldOwnIdentity = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newOwnIdentity = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 591
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSimAvailable, mStartInternalCalled = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v5, :cond_2

    .line 599
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 600
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 601
    .local v5, "areLoaded":Z
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSimAvailable, EUCRs areLoaded = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownIdentity = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 606
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrs(Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 613
    .end local v5    # "areLoaded":Z
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 614
    .local v2, "isSwitchedOn":Z
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v5

    .line 615
    .local v5, "isMultiSim":Z
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isSwitchedOn = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isMultiSim = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-eqz v2, :cond_2

    if-nez v5, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 619
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    .line 622
    .end local v2    # "isSwitchedOn":Z
    .end local v5    # "isMultiSim":Z
    :cond_2
    return-void
.end method

.method private handleSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 548
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 549
    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    .line 551
    .local v1, "isSimAvailable":Z
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimReady, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isSimAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimAvailability(IZ)V

    .line 554
    return-void
.end method

.method private handleSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 557
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 558
    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    .line 560
    .local v1, "isSimAvailable":Z
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimRefresh, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isSimAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimAvailability(IZ)V

    .line 563
    return-void
.end method

.method private handleStart()V
    .locals 3

    .line 669
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Shall not happen! Something wrong with IMS framework lifecycle, Euc module already started!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 672
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    .line 674
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startConditionally()V

    .line 675
    return-void
.end method

.method private handleStop()V
    .locals 2

    .line 682
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    const-string v1, "Shall not happen! Something wrong with IMS framework lifecycle, Euc module already stopped!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mServiceModuleBaseStartCalled:Z

    .line 687
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopOnServiceModuleBaseStop()V

    .line 688
    return-void
.end method

.method private initiateServiceSwitches()V
    .locals 3

    .line 1059
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initiateServiceSwitches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isEucSwitchedOn(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1061
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initiateSimAvailabilityStatuses()V
    .locals 5

    .line 1067
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initiateSimAvailabilityStatuses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1070
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 1071
    .local v2, "phoneId":I
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v3

    .line 1072
    .local v3, "isSimAvailable":Z
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1073
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "phoneId":I
    .end local v3    # "isSimAvailable":Z
    goto :goto_0

    .line 1074
    :cond_0
    return-void
.end method

.method private invalidateOwnIdentities()V
    .locals 2

    .line 862
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalidateOwnIdentities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 864
    return-void
.end method

.method private invalidateOwnIdentity(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 857
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateOwnIdentity, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mOwnIdentitiesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 859
    return-void
.end method

.method private isAtLeastOneSimAvailableAndSwitchedOn()Z
    .locals 2

    .line 921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 922
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const/4 v1, 0x1

    return v1

    .line 921
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isEucPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 917
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEucSwitchedOn(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mContext:Landroid/content/Context;

    .line 748
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 749
    .local v0, "switchStatus":Landroid/content/ContentValues;
    const-string v1, "euc"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 750
    .local v1, "eucSwitchStatus":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 752
    .local v2, "isOn":Z
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Euc switch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return v2
.end method

.method private isMultiSim()Z
    .locals 2

    .line 911
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "config":Ljava/lang/String;
    const-string v1, "SINGLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$handleEucTestSendResponse$0(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .locals 3
    .param p0, "data"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .param p1, "status"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 248
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test send response request key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", send response status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadPendingEucrs(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 792
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPendingEucrs, ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->load(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->load(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->load(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method private loadPendingEucrsConditionally(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 758
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPendingEucrsConditionally, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "ownIdentity":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 763
    .local v1, "isLoaded":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownIdentity = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isLoaded="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 769
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrs(Ljava/lang/String;)V

    .line 770
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLoadedEucrs:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 772
    :cond_0
    return-void
.end method

.method private notifyOnInit()V
    .locals 2

    .line 1079
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyOnInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(I)V

    .line 1081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private performShutdownDeregistrations()V
    .locals 2

    .line 895
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "performShutdownDeregistrations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForPersistentMessage(Landroid/os/Handler;)V

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForVolatileMessage(Landroid/os/Handler;)V

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForAckMessage(Landroid/os/Handler;)V

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForNotificationMessage(Landroid/os/Handler;)V

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->unregisterForSystemMessage(Landroid/os/Handler;)V

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->stop()V

    .line 906
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;->stop()V

    .line 907
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->stop()V

    .line 908
    return-void
.end method

.method private performStartupRegistrations()V
    .locals 3

    .line 867
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "performStartupRegistrations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForPersistentMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForVolatileMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForAckMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 873
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForNotificationMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->registerForSystemMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->start()V

    .line 879
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$JdmazOoJW931QLpJFIUqq5Kqtwk;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$JdmazOoJW931QLpJFIUqq5Kqtwk;-><init>(Lcom/sec/internal/ims/servicemodules/euc/EucModule;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;->start(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;)V

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->start()V

    .line 892
    return-void
.end method

.method private registerForSimEvents()V
    .locals 3

    .line 641
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 643
    .local v0, "phoneCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSDS_SI_DDS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 648
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->registerForSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 649
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->registerForSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 650
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 651
    :cond_1
    return-void
.end method

.method private registerForSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 3
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 654
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSimReady, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v0, 0x15

    invoke-interface {p1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 656
    return-void
.end method

.method private registerForSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 3
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 659
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSimRefresh, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/16 v0, 0x16

    invoke-interface {p1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 661
    invoke-interface {p1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 662
    return-void
.end method

.method private startConditionally()V
    .locals 2

    .line 966
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConditionally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->checkConditionsForInternalStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->startInternal()V

    .line 971
    :cond_0
    return-void
.end method

.method private startInternal()V
    .locals 4

    .line 992
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "startInternal was already called!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->open()V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    nop

    .line 1002
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    .line 1003
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->performStartupRegistrations()V

    .line 1006
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 1009
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mSimAvailabilityStatuses:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    .line 1007
    .end local v1    # "phoneId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 1014
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->loadPendingEucrsConditionally(I)V

    .line 1016
    :goto_1
    return-void

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure, unable to open persistence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Cannot start!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void
.end method

.method private stopConditionally()V
    .locals 2

    .line 974
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopConditionally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->checkConditionsForInternalStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopInternal()V

    .line 979
    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 3

    .line 1019
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    const-string/jumbo v1, "startInternal was not yet called!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1023
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 1026
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucServiceSwitches:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrsConditionally(I)V

    .line 1024
    .end local v1    # "phoneId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 1031
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->discardEucrsConditionally(I)V

    .line 1034
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->performShutdownDeregistrations()V

    .line 1036
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->invalidateOwnIdentities()V

    .line 1037
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->close()V

    .line 1038
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    .line 1039
    return-void
.end method

.method private stopOnServiceModuleBaseStop()V
    .locals 3

    .line 982
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopOnServiceModuleBaseStop, mStartInternalCalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStartInternalCalled:Z

    if-eqz v0, :cond_0

    .line 987
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->stopInternal()V

    .line 989
    :cond_0
    return-void
.end method


# virtual methods
.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sRequiredServices:[Ljava/lang/String;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 179
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "com.sec.internal.ims.servicemodules.euc.test.category.ACTION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent, Intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->dumpExtras(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "action":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIntent, Intent action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-nez v1, :cond_0

    .line 187
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failure, cannot handle null action!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_SYSTEM_EUCR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_1
    const-string v3, "com.sec.internal.ims.servicemodules.euc.test.action.SEND_EUCR_RESPONSE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v3, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_NOTIFICATION_EUCR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_3
    const-string v3, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_ACKNOWLEDGEMENT_EUCR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v7

    goto :goto_0

    :sswitch_4
    const-string v3, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_USER_CONSENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_5
    const-string v3, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_PERSISTENT_EUCR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_6
    const-string v3, "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_VOLATILE_EUCR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v8

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 231
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIntent, unsupported action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestSendResponse(Landroid/content/Intent;)V

    .line 229
    goto :goto_1

    .line 222
    :pswitch_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 223
    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createUserConsent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    move-result-object v2

    .line 224
    .local v2, "moduleUserConsentMessage":Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
    const/4 v3, 0x7

    .line 225
    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 224
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 226
    goto :goto_1

    .line 216
    .end local v2    # "moduleUserConsentMessage":Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
    :pswitch_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createSystemRequest(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    move-result-object v2

    .line 218
    .local v2, "moduleSystemMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    .line 220
    goto :goto_1

    .line 210
    .end local v2    # "moduleSystemMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    :pswitch_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 211
    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createNotification(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    move-result-object v2

    .line 212
    .local v2, "moduleNotificationMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;
    invoke-direct {p0, v5, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    .line 214
    goto :goto_1

    .line 204
    .end local v2    # "moduleNotificationMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;
    :pswitch_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    .line 205
    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createAcknowledgement(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    move-result-object v2

    .line 206
    .local v2, "moduleAcknowledgementMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    invoke-direct {p0, v6, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    .line 208
    goto :goto_1

    .line 199
    .end local v2    # "moduleAcknowledgementMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    :pswitch_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createVolatile(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object v2

    .line 200
    .local v2, "moduleVolatileMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    invoke-direct {p0, v7, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    .line 202
    goto :goto_1

    .line 193
    .end local v2    # "moduleVolatileMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    :pswitch_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mTestEventsFactory:Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;

    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;->createPersistent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object v2

    .line 195
    .local v2, "modulePersistentMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    invoke-direct {p0, v8, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucTestIncomingRequest(ILjava/lang/Object;)V

    .line 197
    nop

    .line 235
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "modulePersistentMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    :goto_1
    goto :goto_2

    .line 236
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent, unsupported category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67cf88ca -> :sswitch_6
        -0x204435e5 -> :sswitch_5
        -0x1c83044e -> :sswitch_4
        -0x1a57bb70 -> :sswitch_3
        -0x18fe1cb9 -> :sswitch_2
        0x58eef317 -> :sswitch_1
        0x7762a783 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 354
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 408
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleEucPhoneIdChanged()V

    .line 409
    goto/16 :goto_0

    .line 389
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 390
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimRefresh(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 391
    goto/16 :goto_0

    .line 385
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 386
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 387
    goto/16 :goto_0

    .line 382
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 383
    goto/16 :goto_0

    .line 379
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 380
    goto/16 :goto_0

    .line 393
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleConfigured(I)V

    .line 394
    goto :goto_0

    .line 411
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleServiceSwitched(I)V

    .line 412
    goto :goto_0

    .line 405
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleStop()V

    .line 406
    goto :goto_0

    .line 402
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleStart()V

    .line 403
    goto :goto_0

    .line 399
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleInit()V

    .line 400
    goto :goto_0

    .line 396
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V

    .line 397
    goto :goto_0

    .line 414
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleReconfigurationResponse(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;I)V

    .line 415
    goto :goto_0

    .line 375
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 376
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingSystemMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;)V

    .line 377
    goto :goto_0

    .line 367
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 368
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingAckMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)V

    .line 369
    goto :goto_0

    .line 371
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 372
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingNotificationMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)V

    .line 373
    goto :goto_0

    .line 363
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 364
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingVolatileMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V

    .line 365
    goto :goto_0

    .line 359
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 360
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->handleIncomingPersistentMessage(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)V

    .line 361
    nop

    .line 419
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .line 288
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 291
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 292
    return-void
.end method

.method public synthetic lambda$handleEucTestSendResponse$1$EucModule(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .param p3, "response"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .param p4, "callback"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {v0, p2, p3, p1, p4}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    invoke-interface {v0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    .line 258
    :goto_0
    return-void
.end method

.method public synthetic lambda$performStartupRegistrations$2$EucModule(Ljava/util/Locale;)V
    .locals 4
    .param p1, "newLocale"    # Ljava/util/Locale;

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mDeviceLocale:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;->getLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "languageCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing languageCode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mLanguageCode:Ljava/lang/String;

    .line 886
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mPersistentWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->changeLanguage(Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mVolatileWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->changeLanguage(Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->mNotificationWorkflow:Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;->changeLanguage(Ljava/lang/String;)V

    .line 890
    :cond_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 310
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 314
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 332
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 335
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 336
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 326
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 328
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 318
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 321
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 322
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 346
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceSwitched, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", switchStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onServiceSwitched(ILandroid/content/ContentValues;)V

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 350
    return-void
.end method

.method public onSimChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 340
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimChanged(I)V

    .line 342
    return-void
.end method

.method public start()V
    .locals 1

    .line 296
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 298
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 299
    return-void
.end method

.method public stop()V
    .locals 1

    .line 303
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 305
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->sendMessage(Landroid/os/Message;)Z

    .line 306
    return-void
.end method
