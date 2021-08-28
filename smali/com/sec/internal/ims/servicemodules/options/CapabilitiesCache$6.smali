.class Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;
.super Ljava/lang/Object;
.source "CapabilitiesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->sendRCSCInfoToHQM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 172
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 175
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 176
    .local v0, "rcsmKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$600(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NCAP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$700(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NRCS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$800(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I

    move-result v2

    const-string v3, "RCSC"

    invoke-static {v1, v3, v2, v0}, Lcom/sec/internal/ims/diagnosis/RcsHqmAgent;->sendRCSInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Z

    .line 179
    return-void
.end method
