.class Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;
.super Ljava/lang/Object;
.source "ContactServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    .line 289
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;->val$serviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inScope(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z
    .locals 5
    .param p1, "contactInfo"    # Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    .line 292
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    .line 293
    .local v0, "capabilities":Lcom/gsma/services/rcs/capability/Capabilities;
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v1

    .line 295
    .local v1, "supportedExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 296
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    .local v3, "supportedExtension":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;->val$serviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const/4 v2, 0x1

    return v2

    .line 300
    .end local v3    # "supportedExtension":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 303
    .end local v1    # "supportedExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
