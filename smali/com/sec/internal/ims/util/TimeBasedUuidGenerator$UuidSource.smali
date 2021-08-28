.class final enum Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;
.super Ljava/lang/Enum;
.source "TimeBasedUuidGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UuidSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

.field public static final enum AUTOCONFIG:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

.field public static final enum GENERATOR:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

.field public static final enum SHAREDPREFS:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    new-instance v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    const-string v1, "AUTOCONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->AUTOCONFIG:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    new-instance v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    const-string v1, "SHAREDPREFS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->SHAREDPREFS:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    new-instance v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    const-string v1, "GENERATOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->GENERATOR:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    .line 71
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    sget-object v5, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->AUTOCONFIG:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->SHAREDPREFS:Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->$VALUES:[Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;
    .locals 1

    .line 71
    sget-object v0, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->$VALUES:[Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/util/TimeBasedUuidGenerator$UuidSource;

    return-object v0
.end method
