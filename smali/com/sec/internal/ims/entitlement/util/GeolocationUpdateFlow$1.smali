.class Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;
.super Ljava/lang/Object;
.source "GeolocationUpdateFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->startGeolocationUpdate(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

.field final synthetic val$accuracy:I

.field final synthetic val$provider:I

.field final synthetic val$updateTime:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    .line 160
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    iput p2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->val$provider:I

    iput p3, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->val$updateTime:I

    iput p4, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->val$accuracy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 163
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->access$200(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->val$provider:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->access$300(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;I)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->val$updateTime:I

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->val$accuracy:I

    iget v3, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->val$provider:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->access$400(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;III)V

    .line 167
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 168
    return-void
.end method
