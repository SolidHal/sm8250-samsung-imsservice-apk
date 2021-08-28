.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$-5sULNY24W1yYQWrRKJpdAs_3To;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$-5sULNY24W1yYQWrRKJpdAs_3To;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$-5sULNY24W1yYQWrRKJpdAs_3To;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->lambda$isNeedDelayedDeregister$0$RegistrationGovernorKor(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
