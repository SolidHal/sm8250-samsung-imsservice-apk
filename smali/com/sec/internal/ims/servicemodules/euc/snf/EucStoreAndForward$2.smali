.class Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;
.super Ljava/lang/Object;
.source "EucStoreAndForward.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    .line 90
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    .line 94
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->access$000(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getResponseToWorkflowHandle()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 99
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;>;"
    :cond_1
    return-void
.end method
