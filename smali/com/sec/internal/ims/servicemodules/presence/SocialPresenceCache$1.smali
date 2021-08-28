.class Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$1;
.super Ljava/util/LinkedHashMap;
.source "SocialPresenceCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lcom/sec/ims/util/ImsUri;",
        "Lcom/sec/ims/presence/PresenceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$1;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 40
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$1;->size()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
