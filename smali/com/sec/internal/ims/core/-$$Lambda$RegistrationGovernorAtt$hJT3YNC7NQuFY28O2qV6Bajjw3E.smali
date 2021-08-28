.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$hJT3YNC7NQuFY28O2qV6Bajjw3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorAtt;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$hJT3YNC7NQuFY28O2qV6Bajjw3E;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorAtt;

    iput-object p2, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$hJT3YNC7NQuFY28O2qV6Bajjw3E;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$hJT3YNC7NQuFY28O2qV6Bajjw3E;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorAtt;

    iget-object v1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$hJT3YNC7NQuFY28O2qV6Bajjw3E;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$1$RegistrationGovernorAtt(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
