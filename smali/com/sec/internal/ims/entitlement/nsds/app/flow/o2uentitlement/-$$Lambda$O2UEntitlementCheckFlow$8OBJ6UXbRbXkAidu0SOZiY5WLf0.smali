.class public final synthetic Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/-$$Lambda$O2UEntitlementCheckFlow$8OBJ6UXbRbXkAidu0SOZiY5WLf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/-$$Lambda$O2UEntitlementCheckFlow$8OBJ6UXbRbXkAidu0SOZiY5WLf0;->f$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/-$$Lambda$O2UEntitlementCheckFlow$8OBJ6UXbRbXkAidu0SOZiY5WLf0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/-$$Lambda$O2UEntitlementCheckFlow$8OBJ6UXbRbXkAidu0SOZiY5WLf0;->f$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/-$$Lambda$O2UEntitlementCheckFlow$8OBJ6UXbRbXkAidu0SOZiY5WLf0;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->lambda$notifyNSDSFlowResponse$0$O2UEntitlementCheckFlow(Landroid/content/Intent;)V

    return-void
.end method
