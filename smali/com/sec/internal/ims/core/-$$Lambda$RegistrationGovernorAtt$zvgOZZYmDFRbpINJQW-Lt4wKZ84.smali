.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$zvgOZZYmDFRbpINJQW-Lt4wKZ84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$zvgOZZYmDFRbpINJQW-Lt4wKZ84;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$zvgOZZYmDFRbpINJQW-Lt4wKZ84;->f$0:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
