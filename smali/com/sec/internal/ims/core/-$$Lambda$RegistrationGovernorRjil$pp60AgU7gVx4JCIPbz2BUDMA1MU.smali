.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$pp60AgU7gVx4JCIPbz2BUDMA1MU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorRjil;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorRjil;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$pp60AgU7gVx4JCIPbz2BUDMA1MU;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorRjil;

    iput-object p2, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$pp60AgU7gVx4JCIPbz2BUDMA1MU;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$pp60AgU7gVx4JCIPbz2BUDMA1MU;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorRjil;

    iget-object v1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$pp60AgU7gVx4JCIPbz2BUDMA1MU;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->lambda$filterService$1$RegistrationGovernorRjil(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
