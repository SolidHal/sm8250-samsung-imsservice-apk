.class public final synthetic Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$H9Zi-RrdYl17fTadAcVVBIY20qk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$H9Zi-RrdYl17fTadAcVVBIY20qk;->f$0:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    return-void
.end method


# virtual methods
.method public final onStatus(Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$H9Zi-RrdYl17fTadAcVVBIY20qk;->f$0:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->lambda$handleEucTestSendResponse$0(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V

    return-void
.end method
