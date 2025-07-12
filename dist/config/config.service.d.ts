import { PrismaService } from "src/prisma/prisma.service";
export declare class ConfigService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    getConfigValue(): Promise<{}>;
}
