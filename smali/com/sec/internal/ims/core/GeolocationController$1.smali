.class Lcom/sec/internal/ims/core/GeolocationController$1;
.super Ljava/lang/Object;
.source "GeolocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/GeolocationController;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/GeolocationController;

.field final synthetic val$isEmergency:Z

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 151
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    iput p2, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->val$phoneId:I

    iput-boolean p3, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->val$isEmergency:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget v1, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->val$phoneId:I

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->val$isEmergency:Z

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/GeolocationController;->access$400(Lcom/sec/internal/ims/core/GeolocationController;IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/GeolocationController;->access$302(Lcom/sec/internal/ims/core/GeolocationController;Z)Z

    .line 155
    return-void
.end method
