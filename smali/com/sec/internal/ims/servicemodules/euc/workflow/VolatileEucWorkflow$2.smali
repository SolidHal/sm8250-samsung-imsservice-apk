.class Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;
.super Ljava/lang/Object;
.source "VolatileEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    .line 186
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
    .locals 2
    .param p1, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$100(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    .line 249
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$100(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$300(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$400(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public onStatus(Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .locals 13
    .param p1, "status"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 189
    const-string v0, "Wrong state: "

    const-string v1, " was not found!"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getStatus()Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    move-result-object v2

    .line 190
    .local v2, "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getId()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "eucId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "ownIdentity":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 193
    .local v5, "remoteUri":Lcom/sec/ims/util/ImsUri;
    new-instance v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-direct {v6, v3, v4, v7, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 197
    .local v6, "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v7, v6}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v7

    .line 198
    .local v7, "euc":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    if-eqz v7, :cond_5

    .line 199
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->ordinal()I

    move-result v8

    aget v1, v1, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto/16 :goto_0

    .line 228
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Internal error. Msg will be send on a new regi for identity: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network error. Message will not be send"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v0, v6, v1, v10}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    .line 226
    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {v7}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v1

    .line 202
    .local v1, "eucState":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    sget-object v11, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState:[I

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_4

    if-ne v11, v8, :cond_3

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v0, v6, v8, v10}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    .line 212
    goto :goto_0

    .line 214
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for EUCR with id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for EUCR with key="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v8, "Illegal volatile EUC state!"

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .end local v3    # "eucId":Ljava/lang/String;
    .end local v4    # "ownIdentity":Ljava/lang/String;
    .end local v5    # "remoteUri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;
    .end local p1    # "status":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    throw v0

    .line 204
    .restart local v2    # "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .restart local v3    # "eucId":Ljava/lang/String;
    .restart local v4    # "ownIdentity":Ljava/lang/String;
    .restart local v5    # "remoteUri":Lcom/sec/ims/util/ImsUri;
    .restart local v6    # "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;
    .restart local p1    # "status":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v0, v6, v8, v10}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    .line 207
    nop

    .line 232
    .end local v1    # "eucState":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    :goto_0
    goto :goto_1

    .line 235
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EUCR with id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EUCR with key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v7    # "euc":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :goto_1
    goto :goto_2

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to change EUCs state in persistence for EUCR with id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to change EUCs state in persistence for EUCR with key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v0    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_2
    return-void
.end method
