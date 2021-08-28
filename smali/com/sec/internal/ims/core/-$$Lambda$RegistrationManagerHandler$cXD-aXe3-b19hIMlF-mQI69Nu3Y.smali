.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$cXD-aXe3-b19hIMlF-mQI69Nu3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$cXD-aXe3-b19hIMlF-mQI69Nu3Y;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$cXD-aXe3-b19hIMlF-mQI69Nu3Y;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$registerInternalListeners$0$RegistrationManagerHandler(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method
