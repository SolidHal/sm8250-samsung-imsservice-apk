.class Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;
.super Ljava/lang/Object;
.source "VshBinderFuntions.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->close(JLandroid/view/Surface;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resetVshVideoDisplay onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 108
    return-void
.end method
