.class public final synthetic Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$TEYpf4NA2eJRw2hTssTbc5JeDO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$TEYpf4NA2eJRw2hTssTbc5JeDO8;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iput p2, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$TEYpf4NA2eJRw2hTssTbc5JeDO8;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$TEYpf4NA2eJRw2hTssTbc5JeDO8;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iget v1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$TEYpf4NA2eJRw2hTssTbc5JeDO8;->f$1:I

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$3$ImsServiceStub(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
