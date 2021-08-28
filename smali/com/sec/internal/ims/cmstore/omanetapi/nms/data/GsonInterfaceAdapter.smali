.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;
.super Ljava/lang/Object;
.source "GsonInterfaceAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "TT;>;",
        "Lcom/google/gson/JsonDeserializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;, "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter<TT;>;"
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;->mType:Ljava/lang/reflect/Type;

    .line 20
    return-void
.end method


# virtual methods
.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "elem"    # Lcom/google/gson/JsonElement;
    .param p2, "interfaceType"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;, "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter<TT;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;->mType:Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 4
    .param p2, "interfaceType"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializationContext;",
            ")",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;, "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, p1}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 26
    .local v0, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 27
    .local v1, "member":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;->mType:Ljava/lang/reflect/Type;

    const-class v3, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-object v1
.end method
