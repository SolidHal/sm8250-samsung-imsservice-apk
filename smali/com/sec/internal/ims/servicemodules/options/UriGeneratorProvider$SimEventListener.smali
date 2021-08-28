.class Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;
.super Ljava/lang/Object;
.source "UriGeneratorProvider.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;

    .line 238
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V

    return-void
.end method


# virtual methods
.method public onReady(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "absent"    # Z

    .line 241
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " absent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz p2, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$700(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method
