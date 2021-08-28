.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerBase$oNKNZPNDhrC55kW6You6nBxoego;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerBase$oNKNZPNDhrC55kW6You6nBxoego;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerBase$oNKNZPNDhrC55kW6You6nBxoego;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->lambda$onFlightModeChanged$0$RegistrationManagerBase(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method
