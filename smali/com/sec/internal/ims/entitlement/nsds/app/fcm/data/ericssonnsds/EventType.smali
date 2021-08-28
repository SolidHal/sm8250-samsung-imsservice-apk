.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# instance fields
.field type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventType;->type:Ljava/lang/String;

    return-object v0
.end method
