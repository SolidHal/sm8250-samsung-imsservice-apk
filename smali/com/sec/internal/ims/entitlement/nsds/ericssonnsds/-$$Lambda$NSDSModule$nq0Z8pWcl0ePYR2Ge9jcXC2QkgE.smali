.class public final synthetic Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/-$$Lambda$NSDSModule$nq0Z8pWcl0ePYR2Ge9jcXC2QkgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/-$$Lambda$NSDSModule$nq0Z8pWcl0ePYR2Ge9jcXC2QkgE;->f$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/-$$Lambda$NSDSModule$nq0Z8pWcl0ePYR2Ge9jcXC2QkgE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/-$$Lambda$NSDSModule$nq0Z8pWcl0ePYR2Ge9jcXC2QkgE;->f$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/-$$Lambda$NSDSModule$nq0Z8pWcl0ePYR2Ge9jcXC2QkgE;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->lambda$scheduleGetGcmRegistrationTokenIfTokenNotSent$0$NSDSModule(Ljava/lang/String;)V

    return-void
.end method
