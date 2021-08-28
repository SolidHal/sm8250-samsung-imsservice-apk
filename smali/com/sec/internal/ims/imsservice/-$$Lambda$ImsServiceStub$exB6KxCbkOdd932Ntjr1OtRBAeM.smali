.class public final synthetic Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$exB6KxCbkOdd932Ntjr1OtRBAeM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

.field public final synthetic f$1:Lcom/sec/ims/ISimMobilityStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$exB6KxCbkOdd932Ntjr1OtRBAeM;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$exB6KxCbkOdd932Ntjr1OtRBAeM;->f$1:Lcom/sec/ims/ISimMobilityStatusListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$exB6KxCbkOdd932Ntjr1OtRBAeM;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$exB6KxCbkOdd932Ntjr1OtRBAeM;->f$1:Lcom/sec/ims/ISimMobilityStatusListener;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterSimMobilityStatusListenerByPhoneId$2$ImsServiceStub(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method
