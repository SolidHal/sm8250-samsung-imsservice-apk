.class final Lcom/sec/internal/ims/config/WorkFlowController;
.super Ljava/lang/Object;
.source "WorkFlowController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WorkFlowController"


# instance fields
.field private final mAcsConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/config/params/ACSConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImsiList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsAcsFirstTryList:Landroid/util/SparseBooleanArray;

.field private final mMsisdnList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcsProfileList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkflowList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/config/IWorkflow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mAcsConfigs:Ljava/util/Map;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mIsAcsFirstTryList:Landroid/util/SparseBooleanArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mImsiList:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mMsisdnList:Landroid/util/SparseArray;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 44
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object v2, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mIsAcsFirstTryList:Landroid/util/SparseBooleanArray;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 46
    iget-object v2, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mAcsConfigs:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/config/params/ACSConfig;

    invoke-direct {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 50
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method private toLastString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "orgStr"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x2

    .line 235
    .local v0, "LIMIT_LENGTH":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 238
    :cond_0
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method clearToken(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    .line 110
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearToken()V

    .line 113
    :cond_0
    return-void
.end method

.method deleteConfiguration(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    .line 174
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage()V

    .line 177
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 3

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/-$$Lambda$rz2ocVrocDvgkeoikXYnhHkbINU;->INSTANCE:Lcom/sec/internal/ims/config/-$$Lambda$rz2ocVrocDvgkeoikXYnhHkbINU;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;
    .locals 2
    .param p1, "phoneId"    # I

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mAcsConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/config/params/ACSConfig;

    return-object v0
.end method

.method getCurrentRcsConfigVersion(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 150
    const-string/jumbo v0, "root/vers/version"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 152
    .local v1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 157
    .end local v1    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WorkFlowController"

    const-string v2, "exception on reading config. return version 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method getIsAcsFirstTry(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mIsAcsFirstTryList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method getMsisdnSkipCount(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 134
    const-string v0, "info/msisdn/skip_count"

    const-string v1, "WorkFlowController"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 136
    .local v2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "skipcount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MsisdnSkipCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return v0

    .line 143
    .end local v0    # "skipcount":I
    .end local v2    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "exception on reading config. return 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method getRcsProfile(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .locals 1
    .param p1, "phoneId"    # I

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    return-object v0
.end method

.method initWorkflow(ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "workflow"    # Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->init()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->saveIsAcsFirstTry(I)V

    .line 66
    const-string v0, "WorkFlowController"

    const-string/jumbo v1, "workflow is created and init"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method isSimInfochanged(IZ)Z
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "isRemoteConfigNeeded"    # Z

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "retChanged":Z
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 182
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v2, 0x0

    const-string v3, "WorkFlowController"

    if-nez v1, :cond_0

    .line 183
    const-string v4, "changedSimInfo: SimManager null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v2

    .line 188
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "imsi":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    const-string v5, "changedSimInfo: getImsi null or empty"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v2

    .line 194
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mImsiList:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    .local v5, "imsi_saved":Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, " ==> "

    if-nez v6, :cond_2

    if-nez p2, :cond_2

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changedSimInfo: imsi is changed, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-static {v3, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    move-object v5, v4

    .line 199
    const/4 v0, 0x1

    .line 201
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mImsiList:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 204
    .local v6, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v8

    .line 205
    .local v8, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    instance-of v9, v8, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;

    if-eqz v9, :cond_3

    .line 206
    if-eqz v6, :cond_3

    sget-object v9, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_3

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changedSimInfo: Non CMCC sim, not suport RCS: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v2

    .line 212
    :cond_3
    iget-object v9, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "rcsAs":Ljava/lang/String;
    sget-object v10, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v10, :cond_4

    const-string v10, "jibe"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "sec"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz p2, :cond_7

    .line 215
    :cond_4
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, "msisdn":Ljava/lang/String;
    if-nez v10, :cond_5

    .line 217
    const-string v7, "changedSimInfo: getLine1Number null"

    invoke-static {v3, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    return v2

    .line 220
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mMsisdnList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "msisdn_saved":Ljava/lang/String;
    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changedSimInfo: msisdn is changed, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Lcom/sec/internal/ims/config/WorkFlowController;->toLastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    move-object v2, v10

    .line 224
    const/4 v0, 0x1

    .line 226
    :cond_6
    iget-object v7, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mMsisdnList:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    .end local v2    # "msisdn_saved":Ljava/lang/String;
    .end local v10    # "msisdn":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changedSimInfo: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const-string v7, "changed"

    goto :goto_0

    :cond_8
    const-string v7, "not changed"

    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    return v0
.end method

.method onBootCompleted()V
    .locals 2

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    .line 118
    .local v1, "workflow":Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onBootCompleted()V

    .line 116
    .end local v1    # "workflow":Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method onSimRefresh(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->cleanup()V

    .line 127
    const-string v0, "WorkFlowController"

    const-string/jumbo v1, "onSimRefresh: remove workflow"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    :cond_0
    return-void
.end method

.method putRcsProfile(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rcsProfile"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mRcsProfileList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method removeIsAcsFirstTry(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mIsAcsFirstTryList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 106
    return-void
.end method

.method removeWorkFlow(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mWorkflowList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 59
    return-void
.end method

.method saveIsAcsFirstTry(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 83
    const-string/jumbo v0, "root/token/token"

    const-string v1, "WorkFlowController"

    const/4 v2, 0x1

    .line 85
    .local v2, "firstTry":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 87
    .local v3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "isACSFirstTry: token is valid"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v0, 0x0

    move v2, v0

    .line 95
    .end local v3    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "exception on reading config. return true "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/WorkFlowController;->mIsAcsFirstTryList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 98
    return-void
.end method
