.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;
.super Ljava/lang/Object;
.source "VideoShareModule.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->toggleCamera(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 448
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 455
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IToggleCamera onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 451
    return-void
.end method
