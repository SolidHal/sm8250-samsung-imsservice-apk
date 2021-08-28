.class Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;
.super Ljava/lang/Object;
.source "PersistentEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    .line 140
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .locals 12
    .param p1, "status"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 143
    const-string v0, "Wrong state: "

    const-string v1, " was not found!"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getStatus()Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    move-result-object v2

    .line 144
    .local v2, "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getId()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "eucId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "ownIdentity":Ljava/lang/String;
    new-instance v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 147
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 149
    .local v5, "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;->invalidate()V

    .line 151
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v6, v5}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v6

    .line 155
    .local v6, "euc":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    if-eqz v6, :cond_6

    .line 156
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$2;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->ordinal()I

    move-result v7

    aget v1, v1, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    .line 182
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal error. Msg will be send on a new regi for identity: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network error. Message will not be send"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v0, v5, v1, v9}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 180
    goto :goto_0

    .line 158
    :cond_3
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v1

    .line 159
    .local v1, "eucState":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    sget-object v10, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$2;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState:[I

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v8, :cond_5

    if-ne v10, v7, :cond_4

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v0, v5, v7, v9}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 167
    goto :goto_0

    .line 169
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for EUCR with id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for EUCR with key="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v7, "Illegal persistent EUC state!"

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .end local v3    # "eucId":Ljava/lang/String;
    .end local v4    # "ownIdentity":Ljava/lang/String;
    .end local v5    # "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;
    .end local p1    # "status":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    throw v0

    .line 161
    .restart local v2    # "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .restart local v3    # "eucId":Ljava/lang/String;
    .restart local v4    # "ownIdentity":Ljava/lang/String;
    .restart local v5    # "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;
    .restart local p1    # "status":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v0, v5, v7, v9}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 163
    nop

    .line 186
    .end local v1    # "eucState":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    :goto_0
    goto :goto_1

    .line 189
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EUCR with id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EUCR with key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v6    # "euc":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :goto_1
    goto :goto_2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change EUCs state in persistence for EUCR with id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change EUCs state in persistence for EUCR with key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v0    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_2
    return-void
.end method
