.class public final enum Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;
.super Ljava/lang/Enum;
.source "CloudMessageBufferDBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloudResponseFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

.field public static final enum Inserted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

.field public static final enum SetDelete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

.field public static final enum SetRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    const-string v1, "Inserted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->Inserted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    .line 38
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    const-string v1, "SetRead"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->SetRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    const-string v1, "SetDelete"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->SetDelete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    .line 36
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->Inserted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->SetRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;
    .locals 1

    .line 36
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    return-object v0
.end method
