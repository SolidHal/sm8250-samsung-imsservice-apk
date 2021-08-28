.class public Lcom/sec/internal/ims/gba/GbaStore;
.super Ljava/lang/Object;
.source "GbaStore.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/gba/Gbakey;",
            "Lcom/sec/internal/ims/gba/GbaValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/gba/GbaStore;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public getKeys(Lcom/sec/internal/ims/gba/Gbakey;)Lcom/sec/internal/ims/gba/GbaValue;
    .locals 1
    .param p1, "key"    # Lcom/sec/internal/ims/gba/Gbakey;

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/gba/GbaValue;

    .line 27
    .local v0, "value":Lcom/sec/internal/ims/gba/GbaValue;
    return-object v0
.end method

.method public hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sec/internal/ims/gba/Gbakey;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 33
    .local v0, "res":Z
    return v0
.end method

.method public putKeys(Lcom/sec/internal/ims/gba/Gbakey;Lcom/sec/internal/ims/gba/GbaValue;)V
    .locals 1
    .param p1, "key"    # Lcom/sec/internal/ims/gba/Gbakey;
    .param p2, "value"    # Lcom/sec/internal/ims/gba/GbaValue;

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V
    .locals 1
    .param p1, "key"    # Lcom/sec/internal/ims/gba/Gbakey;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaStore [map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
