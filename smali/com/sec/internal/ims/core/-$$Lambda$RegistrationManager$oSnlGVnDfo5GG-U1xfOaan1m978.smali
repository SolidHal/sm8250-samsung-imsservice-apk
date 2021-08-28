.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$oSnlGVnDfo5GG-U1xfOaan1m978;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$oSnlGVnDfo5GG-U1xfOaan1m978;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$oSnlGVnDfo5GG-U1xfOaan1m978;->f$0:I

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getPreferredImpuOnPdn$1(ILcom/sec/ims/ImsRegistration;)Z

    move-result p1

    return p1
.end method
