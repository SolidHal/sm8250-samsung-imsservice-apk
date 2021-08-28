.class public Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;
.super Ljava/lang/Object;
.source "TMOCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TmoHttpHeaderValues"
.end annotation


# static fields
.field public static DEVICE_ID_VALUE:Ljava/lang/String; = null

.field public static final USER_AGENT_ID:Ljava/lang/String; = "T-Mobile P20"

.field public static USER_AGENT_ID_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->USER_AGENT_ID_VALUE:Ljava/lang/String;

    .line 75
    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->DEVICE_ID_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
